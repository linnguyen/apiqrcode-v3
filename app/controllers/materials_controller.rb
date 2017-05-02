class MaterialsController < ApplicationController
	def new
	end
	def create
		ChiTietDeXuatPhoiLieu.create(ten: params[:material][:mon])
		byebug
	end
end
