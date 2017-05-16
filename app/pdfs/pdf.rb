
class Pdf < Prawn::Document
	def initialize(thietbi)
		# encoding: utf-8
		super(top_margin: 70)
		@thietbi = thietbi
		set_font_ttf
		move_down 30
        # text "", :align => :center
        # text "Phòng Quản trị thiết bị"
        draw_text "TRƯỜNG CAO ĐẲNG NGHỀ ĐÀ NẴNG", :at => [10,720], :size => 10
        draw_text "PHÒNG QUẢN TRỊ THIẾT BỊ", :at => [25,705], :size => 10
        draw_text "BIÊN BẢN KIỂN SOÁT TÀI SẢN CỐ ĐỊNH NĂM ", :at => [40,680], :size => 10

       
 		# Prawn::Document.generate("output.pdf") do
   #      font_families.update("MyFont" => {
   #      :normal => Rails.root.join("app/assets/fonts/SpecificFont.ttf").to_s
   #      })
        
   #      end
		# @view = view
		# order_number
		# Prawn::Font::AFM.hide_m17n_warning= true
		# text "heeh"
	 # 	text "Trường cao đẳng nghề đà nẵng"
	 
		# text "Danh sách thiết bị kiểm kê năm: "
		line_items
		# total_price
		# text "Order \##{@order.order_number}"
		# text 'Order goes here'
   end
    
    def line_items
        move_down 20
    	table line_item_rows do
            # row(0).font_style = :bold
            # column(1..3).align = :right
            # self.row_colors = ['DDDDDD', 'FFFFFF']
            # self.header = true
    	end
    end

    def set_font_ttf
         font_families.update(
                 "timesnewroman" => {
                  normal: Rails.root.join("app/assets/fonts/timesnewroman/times.ttf").to_s
                  }
                    )
                font "timesnewroman"
     end

    


    def line_item_rows
	    [["TT", "Tên thiết bị", "Tên thiết bị", "DVT","Số lượng lí thuyết","Số lượng lí thuyết", "Chênh lệch", "Nơi đặt để","Thời gian","Tình trạng","Ghi chú"],["hshd","dw"]] +
	    @thietbi.map do |item|
	      [item.ma_kiem_ke, item.ma_thiet_bi,"hehe","hehek"]
	    end
   end

 #  def total_price
 #    move_down 15
 #    # text "Total Price: #{price(@order.total_price)}", size: 16, style: :bold
 #  end

 #  # private

 #  # def price(n)
 #  #   @view.number_to_currency(n)
 #  # end
end