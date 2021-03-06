require "prawn"
class Pdf < Prawn::Document
  include ApplicationHelper
	def initialize(thietbi, year)
		# encoding: utf-8
		super(top_margin: 70)
		@thietbi = thietbi
		@year = year
		set_font_ttf
		move_down 30
        # text "Phòng Quản trị thiết bị",:size => 10,:style => :bold
        draw_text "TRƯỜNG CAO ĐẲNG NGHỀ ĐÀ NẴNG", :at => [10,720], :size => 10, :style => :bold
        draw_text "PHÒNG QUẢN TRỊ THIẾT BỊ", :at => [25,705], :size => 10, :style => :bold
        draw_text "(Ghi chú: Dùng để tổng hợp TSCĐ toàn khoa/phòng)", :at => [0,690], :size => 10
        draw_text "Mẫu số: C32-H",:at => [450,720], :size => 10, :style => :bold
        draw_text "(Ban hành kèm theo QĐ số 999 - TC/QĐ/CĐKT", :at => [320,705], :size => 10
        draw_text "Ngày 02/11/1996 của Bộ Tài Chính)",:at => [320,690], :size => 10
        draw_text "BIÊN BẢN KIỂM KÊ TSCĐ NĂM "+ @year, :at => [120, 650], :size => 16,:style => :bold
        draw_text "Đến 0 giờ, ngày...tháng...năm "+@year,:at => [160,635], :size => 11
        table_inventory
    end
   
    def set_font_ttf
         font_families.update(
                 "timesnewroman" => {
                  normal: Rails.root.join("app/assets/fonts/timesnewroman/times.ttf").to_s,
                  bold: Rails.root.join("app/assets/fonts/timesnewroman/timesbd.ttf").to_s
                  }
                    )
                font "timesnewroman"
    end

    def table_inventory
     	i = 0
        move_down 40
	    table_content = [[{content: "TT",rowspan: 2, width: 25},{content:"Tên thiết bị", rowspan: 2},{content: "Mã thiết bị", rowspan: 2, width: 50},{content:"Số lượng lí thuyết", rowspan:2},{content: "Số lượng thực tế", rowspan:2},{content: "Chênh lệch", rowspan: 2, width: 40},{content: "Nơi đặt để", rowspan: 2},{content: "Thời gian", rowspan:2, width: 60, :align => :center},{:content => "Tình trạng", :colspan => 3},{content:"Ghi chú",rowspan: 2}],
	    [{content: "Bình thường",size: 8,width: 40},{content: "Hỏng",size: 8,width:40},{content: "Xin thanh lí", size:8,width:40}]]+
	     @thietbi.map do |device|
            actual_device = get_amount_of_output_device_by_room device.ma_pth,device.ma_thiet_bi
	       [i+=1,(get_device_by_id device.ma_thiet_bi).ten_thiet_bi,device.ma_thiet_bi,a = actual_device,t = device.so_luong_thuc_te,a-t,device.ma_pth, device.thoi_gian,
	        device.so_luong_thiet_bi_binh_thuong == -1 ? "": device.so_luong_thiet_bi_binh_thuong,
	        device.so_luong_thiet_bi_hong == -1 ? "": device.so_luong_thiet_bi_hong,
	        device.so_luong_thiet_bi_thanh_li == -1 ? "": device.so_luong_thiet_bi_thanh_li,
	        device.ghi_chu]
	     end
         table table_content, :cell_style => {:size => 10}
     end

end

