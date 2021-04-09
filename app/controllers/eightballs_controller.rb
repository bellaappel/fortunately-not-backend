class EightballsController < ApplicationController
  before_action :set_eightball, only: [:show, :update, :destroy]

  # GET /eightballs
  def index
    @eightballs = Eightball.all

    render json: @eightballs
  end

  # GET /eightballs/1
  def show
    render json: @eightball
  end

  # POST /eightballs
  def create
    @eightball = Eightball.new(eightball_params)

    if @eightball.save
      render json: @eightball, status: :created, location: @eightball
    else
      render json: @eightball.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /eightballs/1
  def update
    if @eightball.update(eightball_params)
      render json: @eightball
    else
      render json: @eightball.errors, status: :unprocessable_entity
    end
  end

  # DELETE /eightballs/1
  def destroy
    @eightball.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eightball
      @eightball = Eightball.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def eightball_params
      params.require(:eightball).permit(:name, :ans1, :ans2, :ans3, :ans4, :ans5, :ans6, :ans7, :ans8, :ans9, :ans10, :ans11, :ans12, :ans13, :ans14, :ans15, :ans16, :ans17, :ans18, :ans19, :ans20)
    end
end
