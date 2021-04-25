class EightballsController < ApplicationController
  before_action :set_eightball, only: [:show, :update, :destroy]

  # GET /eightballs
  def index
    @eightballs = Eightball.all
    render json: @eightballs, include: [:creator]
  end

  # GET /eightballs/1
  def show
    render json: @eightball
  end

  # POST /eightballs
  def create
  
    
    @creator = Creator.find_or_create_by(name: params[:creator_name])
    
    @eightball = Eightball.new(name: eightball_params[:name], pos: eightball_params[:pos], neg: eightball_params[:neg], vague: eightball_params[:vague], creator_id: @creator.id)
  
    if @eightball.save
      render json: @eightball, status: :created, location: @eightball
    else
      render json: @eightball.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /eightballs/1
  # def update
  #   @creator = Creator.find_or_create_by(name: eightball_params[:creator_name])
  #     if @eightball.update(name: eightball_params[:name], pos: eightball_params[:pos], neg: eightball_params[:neg], vague: eightball_params[:vague], creator_id: @creator.id)
  #     render json: @eightball
  #   else
  #     render json: @eightball.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /eightballs/1
  def destroy
    if @eightball.destroy 
       @eightballs = Eightball.all
      render json: @eightballs, include: [:creator]
    else render json: @eightball.errors, status: :unprocessable_entity
    end
        
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eightball
      @eightball = Eightball.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def eightball_params
      params.require(:eightball).permit!
    end
end
