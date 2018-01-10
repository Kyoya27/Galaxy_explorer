class TravelsController < ApplicationController
	before_action :set_travel, only: [:show, :edit, :update, :destroy]

	def index
		@travels = Travel.all
	end
	def show; end
	def new
		@travel = Travel.new
	end
	def create
		@travel = Travel.new(require_travel)
		if @travel.save
			redirect_to(@travel)
		else
			render 'new'
		end
	end
	def edit; end
	def update
		if @travel.update(require_travel)
		redirect_to(@travel)
		else
			render 'edit'
		end
	end
	def destroy
		@travel.destroy
		redirect_to(travels_path)
	end

	private
	def set_travel
		@travel = Travel.find(params[:id])
	end

	def require_travel
			params.require(:travel).permit(
				:budget_base,
        :budget_remaining
			)
	end

end
