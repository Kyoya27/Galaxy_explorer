class PlacetobesController < ApplicationController
	before_action :set_travel, only: [:show, :edit, :update, :destroy]

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
			redirect_to(@placetobe)
		else
			render 'new'
		end
	end
	def edit; end
	def update
		if @placetobe.update(require_placetobe)
		redirect_to(@placetobe)
		else
			render 'edit'
		end
	end
	def destroy
		@placetobe.destroy
		redirect_to(@placetobe)
	end

	private
	def set_travel
		@placetobe = Placetobe.find(params[:id])
	end

	def require_placetobe
			params.require(:placetobe).permit(
				:name,
        :description,
				:cost,
				:mark
			)
	end

end
