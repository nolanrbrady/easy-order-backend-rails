class ResterauntsController < ApplicationController
  before_action :set_resteraunt, only: [:show, :update, :destroy]

  # GET /resteraunts
  def index
    @resteraunts = Resteraunt.all

    render json: @resteraunts
  end

  # GET /resteraunts/1
  def show
    render json: @resteraunt
  end

  # POST /resteraunts
  def create
    @resteraunt = Resteraunt.new(resteraunt_params)

    if @resteraunt.save
      render json: @resteraunt, status: :created, location: @resteraunt
    else
      render json: @resteraunt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /resteraunts/1
  def update
    if @resteraunt.update(resteraunt_params)
      render json: @resteraunt
    else
      render json: @resteraunt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /resteraunts/1
  def destroy
    @resteraunt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resteraunt
      @resteraunt = Resteraunt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resteraunt_params
      params.require(:resteraunt).permit(:location, :user_id, :name)
    end
end
