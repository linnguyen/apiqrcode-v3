class InventorySeasonsController < ApplicationController
	def new
		@inventory_season = DotKiemKe.new
	end

	def create
       @inventory_season=DotKiemKe.new(season_params)
       if @inventory_season.save
       	 @inventory_season = DotKiemKe.all
       	 render 'new'
       else
       	render 'new'
       end
	end
	def season_params
	  	params.require(:dot_kiem_ke).permit(:ten)
    end
end
