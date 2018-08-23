class Api::V1::ScoresController < ApplicationController

  def index
    render json: Score.all
  end

  def create
    score = Score.create(score_params)
    render json: score, status: 201
  end

  private

  def score_params
    params.permit(:user_id, :score)
  end

end
