class MaterialPdf < Prawn::Document
  include ApplicationHelper
  def initialize(ma_dxpl)
    # encoding: utf-8
    super(top_margin: 70)
    @id = ma_dxpl
    @dxpl = DeXuatPhoiLieu.find_by(ma_dxpl: @id)
    @dxpl_detail = @dxpl.chi_tiet_de_xuat_phoi_lieu
    set_font_ttf
    move_down 30
        # text "Phòng Quản trị thiết bị",:size => 10,:style => :bold
        draw_text "UỶ BAN NHÂN DÂN THÀNH PHỐ ĐÀ NẴNG", :at => [10,720], :size => 10, :style => :bold
        draw_text "TRƯỜNG CAO ĐẲNG NGHỀ ĐÀ NẴNG", :at => [10,705], :size => 10, :style => :bold
        draw_text "Số : ....../YC-CK", :at => [60,690], :size => 10
        # draw_text "(Ghi chú: Dùng để tổng hợp TSCĐ toàn khoa/phòng)", :at => [0,690], :size => 10
        draw_text "CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM",:at => [300,720], :size => 10, :style => :bold
        draw_text "Độc lập - Tự do - Hạnh phúc", :at => [340,705], :size => 10,:style => :bold
        draw_text "Đà Nẵng, ngày....tháng....năm 2017",:at => [330,690], :size => 11
        
        draw_text "GIẤY ĐỀ XUẤT MUA VẬT TƯ, PHÔI LIỆU",:at => [120,660], :size => 12, :style => :bold
        draw_text "Kính gửi:  LÃNH ĐẠO NHÀ TRƯỜNG", :at => [100, 640]
        draw_text "Người đề xuất:", :at => [10,625], :size => 10, :style => :italic
        draw_text  (get_staff_by_id @dxpl.ma_nql).ho_ten, :at => [151,625], :size => 10
        draw_text "Bộ phận công tác:", :at => [10,610], :size => 10, :style => :italic
        draw_text "Khoa Cơ khí Trường cao đẳng nghề  Đà Nẵng", :at => [151,610], :size => 10
        draw_text "Lí do yêu cầu:", :at => [10,595], :size => 10, :style => :italic
        draw_text  @dxpl.li_do, :at => [151,595], :size => 10
        draw_text "Môn:", :at => [151,580], :size => 10
        draw_text  @dxpl.mon, :at => [190,580], :size => 10
        draw_text "Tổng số HS-SV:", :at => [300,580], :size => 10
        draw_text  @dxpl.tong_so_hoc_sinh, :at => [380,580], :size => 10
        # draw_text "Đến 0 giờ, ngày...tháng...năm "+@year,:at => [160,635], :size => 11
        table_inventory
    end
   
    def set_font_ttf
         font_families.update(
                 "timesnewroman" => {
                  normal: Rails.root.join("app/assets/fonts/timesnewroman/times.ttf").to_s,
                  bold: Rails.root.join("app/assets/fonts/timesnewroman/timesbd.ttf").to_s,
                  italic: Rails.root.join("app/assets/fonts/timesnewroman/timesi.ttf").to_s
                  }
                    )
                font "timesnewroman"
    end

    def table_inventory
      i = 0
      move_down 100
      table_content = [[{content: "STT",rowspan: 2, width: 35},{content:"Tên vật tư,phôi liệu", rowspan: 2},{content: "Qui cách", rowspan: 2, width: 50},{content:"Chủng loại", rowspan:2},{content: "Xuất xứ", rowspan:2},{content: "DVT", rowspan: 2, width: 40},{:content => "Số lượng", :colspan => 3,:align => :center},{content:"Kiểm tra",rowspan: 2}],
      [{content: "Bình thường",size: 8,width: 60},{content: "Hỏng",size: 8,width:60},{content: "Xin thanh lí", size:8, width: 60}]]+
       @dxpl_detail.map do |d|
         [i+=1,d.ten_vat_tu_phoi_lieu,d.qui_cach,d.chung_loai,d.xuat_xu,d.don_vi_tinh,d.tong_so, d.da_co, d.mua_moi,""]
       end
       table table_content, :cell_style => {:size => 10}
      end

 end

    
 
