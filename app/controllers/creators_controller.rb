class CreatorsController < ApplicationController
  before_action :set_author, only: [:show, :update, :destroy]

  # GET /authors
  def index
    @creators = Creator.all

    render json: @creators
  end

  # GET /authors/1
  def show
    render json: @creator
  end

  # POST /authors
  def create
    @creator = Creator.new(creator_params)

    if @creator.save
      render json: @creator, status: :created, location: @creator
    else
      render json: @creator.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /authors/1
  def update
    if @creator.update(creator_params)
      render json: @creator
    else
      render json: @creator.errors, status: :unprocessable_entity
    end
  end

  # DELETE /authors/1
  def destroy
    @creator.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @creator = Creator.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def creator_params
      params.require(:creator).permit(:name)
    end
end
