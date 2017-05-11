class InventorySeasonsController < ApplicationController
	def season
		@inventory_season = DotKiemKe.new
    @inventory_season1 = DotKiemKe.all
    if params.present?
        DotKiemKe.new(season_params).save
    end
  end

  def destroy
      DotKiemKe.find(params[:id]).destroy
      redirect_to seasons_url
  end
  
  def season_params
	  	params.require(:dot_kiem_ke).permit(:ten)
  end
end
