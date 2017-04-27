class Api::InventorySeasonsController < ApplicationController
	def index
        render json: {:inventory_season => DotKiemKe.all}
	end
end
