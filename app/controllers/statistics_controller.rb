class StatisticsController < ApplicationController
	def show_by_time
         time = params[:time]
		 month = params[:time][0..1]
		 year = params[:time][4..7]
         @thiet_bi = KiemKe.where("MONTH(thoi_gian) = ? && YEAR(thoi_gian) = ?", month, year)
         .paginate(page: params[:page], :per_page => 8)
    end

	def show_by_room
          @thiet_bi = KiemKe.where("ma_pth = ?", params[:room]).paginate(page: params[:page], :per_page => 8)
	end
end
