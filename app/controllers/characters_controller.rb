class CharactersController < ApplicationController
  
  before_action :find_character, only: [:show, :edit, :destroy]

  def index
  	@characters = Character.all
  end

  def new
  	@character = Character.new 
  end

  def create
  	@character = Character.create(name: character_params[:name], attack: character_params[:attack], speed: character_params[:speed], intellect: character_params[:intellect], team_id: session[:team_id])
    # byebug
    session[:character_id] = @character.id
    # byebug
  	redirect_to tasks_path
  end

  def show
  end

  private 

    def find_character
      @character = Character.find(params[:id])
    end

    def character_params
      params.require(:character).permit(:name, :attack, :speed, :intellect, :team_id, :user_id)
    end

end
