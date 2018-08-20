class ControlsController < ApplicationController
  before_action :set_control, only: [:show, :update, :destroy]

  # GET /controls
  def index
    @controls = Control.all

    render json: @controls
  end

  # GET /controls/1
  def show
    render json: @control
  end

  # POST /controls
  def create
    @control = Control.new(control_params)

    if @control.save
      render json: @control, status: :created, location: @control
    else
      render json: @control.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /controls/1
  def update
    if @control.update(control_params)
      render json: @control
    else
      render json: @control.errors, status: :unprocessable_entity
    end
  end

  # DELETE /controls/1
  def destroy
    @control.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_control
      @control = Control.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def control_params
      params.require(:control).permit(:name, :email)
    end
end
