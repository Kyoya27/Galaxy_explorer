class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show, :edit, :update, :destroy]

  def index
    @planets = Planet.all
  end

  def show
    @planets = Planet.all
    render 'index'
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    if check_fields(@planet)
      if @planet.save
        redirect_to("/simulations/new?id_planet=" + @planet.id.to_s)
      else
        render 'new'
      end
    else
      render 'new'
    end
  end

  def choice
    render 'planets'
  end

  def update
    if @planet.update(planet_params)
      redirect_to(@planet)
    else
      render 'edit'
    end
  end

  def destroy
    @simulation = Simulation.where(planet_id: @planet.id).each do |s|
      s.destroy
    end
    @placetobe = Placetobe.where(planet_id: @planet.id).each do |pl|
      pl.destroy
    end
    File.delete("app/assets/images/"+ @planet.name+".jpg")
    @planet.destroy
    redirect_to(@planet)
  end

  private
	def set_planet
		@planet = Planet.find(params[:id])
	end

  def planet_params
    params.require(:planet).permit(
      :name,
      :description,
      :weather,
      :galaxy,
      :thumbnail
    )
  end

  def check_fields(planet)
    return  !planet.name.empty? &&
            !planet.description.empty? &&
            !planet.weather.empty? &&
            !planet.galaxy.empty? &&
            File.exist?("app/assets/images/" + planet.name + ".jpg")
  end
end
