class GroupsController < ApplicationController
  before_action :check_if_owner, only: [:create]
  before_action :check_if_player, only: [:index, :show]

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
    authorize @group
  end

  def create
    @group = Group.new(group_params)
    @field = Field.find(params[:group][:field_id])
    @group.field = @field
    if @group.save
      redirect_to @field
    else
      redirect_to @field
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
