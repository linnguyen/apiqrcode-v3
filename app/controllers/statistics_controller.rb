class StatisticsController < ApplicationController
	def show_by_time
         @year = params[:time]
         @thiet_bi = KiemKe.where("YEAR(thoi_gian) = ?", @year).paginate(page: params[:page], :per_page => 8)
    end

	def show_by_room
         @thiet_bi = KiemKe.where("ma_pth = ?", params[:room]).paginate(page: params[:page], :per_page => 8)
	end

	def show_by_inventory_season
		 @thiet_bi = KiemKe.where("ma")
	end
end
