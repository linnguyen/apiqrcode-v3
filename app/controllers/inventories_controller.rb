class InventoriesController < ApplicationController
	def index
		@thiet_bi = KiemKe.paginate(page: params[:page], :per_page => 8)
        # render json: get_list_day
         # byebug
	end
end
