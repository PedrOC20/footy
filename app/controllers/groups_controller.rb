class GroupsController < ApplicationController
  before_action :check_if_owner, only: [:create]
  before_action :fetch_group, only: [:show, :join]
  before_action :check_if_player, only: [:join]
  before_action :check_if_player_is_in_group, only: [:join]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @groups = policy_scope(Group)
    if params.dig(:search, :location).present? && params.dig(:search, :start_time).present? && params.dig(:search, :end_time).present? && params.dig(:search, :date).present?
      if current_user.nil?
        @groups = Group.search(params.dig(:search, :location), params.dig(:search, :start_time), params.dig(:search, :end_time), params.dig(:search, :date))
      else
        @groups = Group.search(params.dig(:search, :location), params.dig(:search, :start_time), params.dig(:search, :end_time), params.dig(:search, :date))
        @groups = @groups - current_user.groups
      end
      if params.dig(:search, :parking).present? || params.dig(:search, :indoor).present? || params.dig(:search, :locker_room).present? || params.dig(:search, :field_type).present? || params.dig(:search, :field_size).present?

        filter_by_field_size
        filter_by_field_type
        @filtered_fields = @filtered_fields.by_filter(params.dig(:search, :parking), params.dig(:search)[:indoor], params.dig(:search)[:locker_room])
        fields_groups
        session[:past_params]
      end
      @markers = @groups.map do |group|
        {
          lat: group.field.latitude,
          lng: group.field.longitude
          # infoWindow: render_to_string(partial: "info_window", locals: { group: group })
        }
      end
    else
      flash[:alert] = "You must fill all search fields"
      render pages: "home"
    end
  end

  def show
    #@chat_room = @group.chat_room.includes(messages: :group_member)
    @group_member = @group.group_members.where(user: current_user)
    if @group_member
      @group_member = @group_member.first
    end
    @chat_room = ChatRoom.includes(messages: :group_member).find(@group.chat_room.id)
    @group_member_has_reviews = !@group.group_members.pluck(:field_review_description).compact.empty?
    if @group_member_has_reviews
      @avg_rating = @group.group_members.pluck(:field_review_rating).compact.sum.to_f / @group.group_members.pluck(:field_review_rating).compact.count
    end


    authorize @group
    @markers =
      {
        lat: @group.field.latitude,
        lng: @group.field.longitude
        # infoWindow: render_to_string(partial: "info_window", locals: { group: group })
      }
  end

  def fields_groups
    fields_ids = @filtered_fields.pluck(:id)
    if params.dig(:search, :location).present? && params.dig(:search, :start_time).present? && params.dig(:search, :end_time).present? && params.dig(:search, :date).present?
    @groups = Group.where(field: [fields_ids]).search(params.dig(:search, :location), params.dig(:search, :start_time), params.dig(:search, :end_time), params.dig(:search, :date))
    else
      @groups = Group.where(field: [fields_ids])
    end
    @groups
  end

  def filter_by_field_size
    if params.dig(:search)[:field_size] == "All"
      @filtered_fields = Field.all
    else
      @filtered_fields = Field.where(field_size: params.dig(:search)[:field_size])
    end
  end

  def filter_by_field_type
    if params.dig(:search)[:field_type] == "All"
      @filtered_fields
    else
      @filtered_fields = @filtered_fields.where(field_type: params.dig(:search)[:field_type])
    end
  end

  def create
    @group = Group.new(group_params)
    @field = Field.find(params[:group][:field_id])
    @group.field = @field
    authorize @group
    if @group.save
      redirect_to @field
    else
      redirect_to @field
    end
  end

  def join
    # @current_user_group_member = @group.group_members.where(user: current_user).first
    joined_members = @group.group_members.count
    # check if max members < group members
    authorize @group
    if joined_members < @group.max_members
      # join group
      @group_member = GroupMember.new(user: current_user, group: @group)
      if @group_member.save
        @group.change_status!
        redirect_to my_bookings_path
      else
        redirect_to group_path(@group), alert: "You are already in this group!"
      end
    else
      redirect_to group_path(@group)
    end
  end

  private

  def group_params
    params.require(:group).permit(:date, :start_time, :end_time, :min_members, :max_members, :price, :status, :field_id)
  end

  def check_if_owner
    redirect_to root_path, alert: "Action not allowed!" unless current_user.Owner?
  end

  def check_if_player
    redirect_to root_path, alert: "Action not allowed!" unless current_user.Player?
  end

  def fetch_group
    @group = Group.find(params[:id])
  end

  def check_if_player_is_in_group
    redirect_to root_path, alert: "You are already in this group!" if @group.group_members.any? && @group.group_members.pluck(:user_id).include?(current_user.id)
  end
end
