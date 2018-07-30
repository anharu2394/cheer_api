class TargetsController < ApplicationController
  before_action :set_target, only: [:show, :update, :destroy]

  # GET /targets
  def index
    @targets = Target.all

    render json: @targets
  end

  # GET /targets/1
  def show
    render json: @target
  end

  # POST /targets
  def create
    @target = Target.new(target_params)

    if @target.save
      render json: @target, status: :created, location: @target
    else
      render json: @target.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /targets/1
  def update
    if @target.update(target_params)
      render json: @target
    else
      render json: @target.errors, status: :unprocessable_entity
    end
  end

  # DELETE /targets/1
  def destroy
    @target.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_target
      @target = Target.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def target_params
      params.require(:target).permit(:user_id, :message_id)
    end
end
