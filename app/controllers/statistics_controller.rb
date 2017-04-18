class StatisticsController < ApplicationController
	def show_by_time
		 @month = params[:month]
		 @year = params[:year]
         @thiet_bi = KiemKe.where("MONTH(thoi_gian) = ? && YEAR(thoi_gian) = ?", @month, @year)
         .paginate(page: params[:page], :per_page => 8)
         
    end

	# def show_by_room
 #         @thiet_bi = KiemKe.where("ma_pth, params[:month], params[:year])
 #         .paginate(page: params[:page], :per_page => 8)
	# end
end
