class PlacetobesController < ApplicationController
	before_action :set_placetobe, only: [:edit, :update, :destroy]

	def index
		@placetobes = Placetobe.all
	end
	def show
		@placetobes = Placetobe.all
		render 'index'
	end
	def new
		@placetobe = Placetobe.new
	end
	def create
		@placetobe = Placetobe.new(require_placetobe)
		if @placetobe.save
			redirect_to("/placetobes/" + @placetobe.planet_id.to_s)
		else
			render 'new'
		end
	end
	def edit
		@planets = Planet.all
	end
	def update
		if @placetobe.update(require_placetobe)
		redirect_to("/planets")
		else
			render 'edit'
		end
	end
	def destroy
		@placetobe.destroy
		redirect_to("/planets")
	end

	private
	def set_placetobe
		@placetobe = Placetobe.find(params[:id])
	end

	def require_placetobe
			params.require(:placetobe).permit(
				:name,
        :description,
				:cost,
				:mark,
				:planet_id
			)
	end

end
