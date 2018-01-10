class TransportssController < ApplicationController
	before_action :set_transports, only: [:show, :edit, :update, :destroy]

	def index
		@transportss = Transports.all
	end
	def show; end
	def new
		@transports = Transports.new
	end
	def create
		@transports = Transports.new(require_transports)
		if @transports.save
			redirect_to(@transports)
		else
			render 'new'
		end
	end
	def edit; end
	def update
		if @transports.update(require_transports)
		redirect_to(@transports)
		else
			render 'edit'
		end
	end
	def destroy
		@transports.destroy
		redirect_to(transportss_path)
	end

	private
	def set_transports
		@transports = Transports.find(params[:id])
	end

	def require_transports
			params.require(:transports).permit(
				:name,
				:quality_coeff,
				:max_dist
			)
	end

end
