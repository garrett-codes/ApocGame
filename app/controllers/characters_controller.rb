class CharactersController < ApplicationController
  
  before_action :find_character, only: [:show, :edit, :destroy]

  def index
  	@characters = Character.all
  end

  def new
  	@character = Character.new 
  end

  def create
  	@character = Character.create(character_params)
    # byebug
  	redirect_to user_path(@character.user_id)
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
