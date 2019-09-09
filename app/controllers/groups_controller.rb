class GroupsController < ApplicationController
  before_action :check_if_owner, only: [:create]
  before_action :check_if_player, only: [:join]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @groups = policy_scope(Group)
    if params.dig(:search, :location).present? && params.dig(:search, :start_time).present? && params.dig(:search, :end_time).present? && params.dig(:search, :date).present?
      @groups = Group.search(params.dig(:search, :location), params.dig(:search, :start_time), params.dig(:search, :end_time), params.dig(:search, :date))

      @markers = @groups.map do |group|
        {
          lat: group.field.latitude,
          lng: group.field.longitude
          # infoWindow: render_to_string(partial: "info_window", locals: { group: group })
        }
      end
    else
      flash[:alert] = "You must fill all search fields"
      redirect_to root_path
    end
  end

  def show
    @group = Group.find(params[:id])
    #@chat_room = @group.chat_room.includes(messages: :group_member)
    @chat_room = ChatRoom.includes(messages: :group_member).find(@group.chat_room.id)

    authorize @group
    @markers =
      {
        lat: @group.field.latitude,
        lng: @group.field.longitude
        # infoWindow: render_to_string(partial: "info_window", locals: { group: group })
      }
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
    @group = Group.find(params[:id])
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
        redirect_to group_path(@group), alert: "You are already in that group! Fuck You Nigga!"
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
end
