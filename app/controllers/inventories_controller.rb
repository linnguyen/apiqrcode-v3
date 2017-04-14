class InventoriesController < ApplicationController
	def index
		@thiet_bi = KiemKe.paginate(page: params[:page], :per_page => 8)
	end
end
