class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show, :edit, :update, :destroy]

  def index
    @planets = Planet.all
  end
  def show
    render 'index'
  end
  def new
    @planet = Planet.new
  end
  def create
    @planet = Planet.new(require_planet)
    if @planet.save
      redirect_to(@planet)
    else
      render 'new'
    end
  end
  def choice
    render 'planets'
  end
  def update
    if @planet.update(require_planet)
      redirect_to(@planet)
    else
      render 'edit'
    end
  end
  def destroy
    @planet.destroy
  end
end
