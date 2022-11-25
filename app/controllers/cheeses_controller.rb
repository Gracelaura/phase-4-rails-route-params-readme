class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show_by_name
    # byebug
    cheese = Cheese.find_by(name: params[:name])
    render json: cheese
  end

  def show
    cheesess = Cheese.find(params[:id])
    render json: cheesess

  end

end
