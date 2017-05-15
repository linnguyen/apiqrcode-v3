class Pdf < Prawn::Document
	def initialize(thietbi)
		super(top_margin: 70)
		@thietbi = thietbi
		# @view = view
		order_number
		line_items
		# total_price
		# text "Order \##{@order.order_number}"
		# text 'Order goes here'
	end

	def order_number
		text "Order", size: 30, style: :bold
	end
    
    def line_items
    	# move_down 20
    	table line_item_rows do 
            # row(0).font_style = :bold
            column(1..3).align = :right
            # self.row_colors = ['DDDDDD', 'FFFFFF']
            # self.header = true
    	end
    end

    def line_item_rows
	    [["Product", "Qty", "Unit Price", "Full Price"]] +
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