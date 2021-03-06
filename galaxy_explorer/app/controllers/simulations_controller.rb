class SimulationsController < ApplicationController
	before_action :set_simulation, only: [:edit, :update, :destroy]

	def index
		@simulations = Simulation.all
	end
	def show
		@simulations = Simulation.all
		render 'index'
	end
	def new
		@simulation = Simulation.new
	end
	def create
		@simulation = Simulation.new(require_simulation)
		if @simulation.save
			redirect_to("/planets")
		else
			render 'new'
		end
	end
	def update
		if @simulation.update(require_simulation)
		redirect_to("/planets")
		else
			render 'edit'
		end
	end
	def destroy
		@simulation.destroy
		redirect_to("/planets")
	end

	def finalResult
		@simulation = require_simulation
		@result = @simulation.coeffPeople + @simulation.coeffAccomodation
		+ @simulation.coeffGuide+ @simulation.coeffFood
		+ @simulation.coeffOut
	end


	private
	def set_simulation
		@simulation = Simulation.find(params[:id])
	end

	def require_simulation
			params.require(:simulation).permit(
				:coeffPeople,
	      :coeffAccomodation,
	      :coeffGuide,
	      :coeffFood,
	      :coeffOut,
				:planet_id
			)
	end

end
