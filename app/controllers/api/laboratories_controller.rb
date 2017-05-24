class Api::LaboratoriesController < ApplicationController
	def index
		render json: {:labrooms => PhongThucHanh.all}
	end

	def get_device_by_labroom
		@thietbi = []
        phong_thuc_hanh = PhongThucHanh.find_by(ma_pth: params[:lab_room_id])
        nhan_vien = phong_thuc_hanh.nhan_vien
        nhan_vien.each do |staff|
         	  staff.phieu_xuat.each do |ex_bill|
                ex_bill.chi_tiet_nhap_xuat.each do |io_detail|
         	      @thietbi << io_detail
                end
              end
        end
        render json: {:devices => @thietbi}
	end
end
