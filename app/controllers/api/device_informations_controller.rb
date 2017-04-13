class Api::DeviceInformationsController < ApplicationController
	def index
		render json: ChiTietNhapXuat.all
	end
end
