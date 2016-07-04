class LeaverollsController < ApplicationController
  before_action :set_leaveroll, only: [:show, :update, :destroy]

  # GET /leaverolls
  def index
    @leaverolls = Leaveroll.all

    render json: @leaverolls
  end

  # GET /leaverolls/1
  def show
    render json: @leaveroll
  end

  # POST /leaverolls
  def create
    @leaveroll = Leaveroll.new(leaveroll_params)

    if @leaveroll.save
      render json: @leaveroll, status: :created, location: @leaveroll
    else
      render json: @leaveroll.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /leaverolls/1
  def update
    if @leaveroll.update(leaveroll_params)
      render json: @leaveroll
    else
      render json: @leaveroll.errors, status: :unprocessable_entity
    end
  end

  # DELETE /leaverolls/1
  def destroy
    @leaveroll.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leaveroll
      @leaveroll = Leaveroll.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def leaveroll_params
      params.fetch(:leaveroll, {})
    end
end
