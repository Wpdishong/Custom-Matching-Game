class GamesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_game, only: [:show, :update]

  def new
    @game = current_user.games.build
    @photos = current_user.photos.order("RANDOM()").limit(8)
  end

  def create
    @game = current_user.games.build
    if @game.save
      redirect_to @game, notice: 'Game started!'
    else
      redirect_to root_path, alert: 'Unable to start game.'
    end
  end

  def show
    @photos = current_user.photos.order("RANDOM()").limit(8)
  end

  def update
    if @game.update(game_params)
      render json: { score: @game.score }
    else
      render json: { error: @game.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_game
    @game = current_user.games.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:score, :completed)
  end
end
