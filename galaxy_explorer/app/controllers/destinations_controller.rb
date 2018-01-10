class DestinationsController < ApplicationController
	before_action :set_destination, only: [:show, :edit, :update, :destroy]

	def index
		@destinations = Destination.all
	end
	def show; end
	def new
		@destination = Destination.new
	end
	def create
		@destination = Destination.new(require_destination)
		if @destination.save
			redirect_to(@destination)
		else
			render 'new'
		end
	end
	def choice
		render 'destinations'
	end
	def update
		if @destination.update(require_destination)
		redirect_to(@destination)
		else
			render 'edit'
		end
	end
	def destroy
		@destination.destroy
		redirect_to(destinations_path)
	end

	private
	def set_destination
		@destination = Destination.find(params[:id])
	end

	def require_destination
			params.require(:destination).permit(
				:name,
				:x,
				:y,
        :coeff_touristic
			)
	end

end
