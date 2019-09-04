class FieldsController < ApplicationController
  before_action :check_if_owner

  def index
    @fields = policy_scope(Field)
    @fields = @fields.geocoded #returns flats with coordinates

    @markers = @fields.map do |field|
      {
        lat: field.latitude,
        lng: field.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { field: field })
      }
  end

  def show
    @field = Field.find(params[:id])
    @groups = @field.groups

    authorize @field
  end

  def new
    @field = Field.new
    authorize @field
  end

  def create
    @field = Field.new(field_params)
    @field.user = current_user
    authorize @field

    if @field.save
      redirect_to field_path(@field)
    else
      render :new
    end
  end

  def edit
    @field = Field.find(params[:id])
    authorize @field
  end

  def update
    @field = Field.find(params[:id])
    @field.user = current_user
    authorize @field

    if @field.update(field_params)
      redirect_to field_path(@field)
    else
      render :edit
    end
  end

  def destroy
    @field = Field.find(params[:id])
    @field.user = current_user
    authorize @field

    @field.destroy
    redirect_to fields_path
  end

  private

  def field_params
    params.require(:field).permit(
      :name,
      :location,
      :description,
      :field_size,
      :field_type,
      :locker_room,
      :parking,
      :indoor,
      :user_id
    )
  end


  def check_if_owner
    redirect_to root_path, alert: "Action not allowed!" unless current_user.Owner?
  end
end
