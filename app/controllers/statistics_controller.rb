class StatisticsController < ApplicationController

	def show_by_time
      @year = params[:time]
      @thiet_bi = KiemKe.where("YEAR(thoi_gian) = ?", @year).paginate(page: params[:page], :per_page => 8)
      @nawm = (get_device_by_id "TB00001").ten_thiet_bi
  end

	def show_by_room
		  @room = params[:room]
      @thiet_bi = KiemKe.where("ma_pth = ?", @room).paginate(page: params[:page], :per_page => 8)
	end

	def show_by_inventory_season
      id_dot = params[:season]
      @ten_dot = (get_iv_season_by_id id_dot).ten
	    @thiet_bi = KiemKe.where("id_dot = ?", id_dot).paginate(page: params[:page], :per_page => 8)
	end

  def download
      year = params[:year]
      @thiet_bi = KiemKe.where("YEAR(thoi_gian) = ?",year)
      respond_to do |format|
            format.html
            format.pdf do
              pdf = Pdf.new(@thiet_bi, year)
              send_data pdf.render,
                      filename:"thongke",
                      type: 'application/pdf',
                      disposition: 'inline'        
            end
        end
    end
    
end
