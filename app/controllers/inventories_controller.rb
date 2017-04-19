class InventoriesController < ApplicationController
  before_action :logged_in_user, only: [:index]
	def index
		@thiet_bi = KiemKe.search(params[:search]).paginate(page: params[:page], :per_page => 8)
        # render json: get_list_day
         # byebug
	end
	
	def search      
       @thiet_bi = KiemKe.find_by(ma_thiet_bi: params[:search])
       respond_to do |format|
          format.js  { render :partial => "elements/livesearch", :locals => {:search => @thiet_bi, :query => params[:search]} }
          format.html { render :index }
       end
  end
end
