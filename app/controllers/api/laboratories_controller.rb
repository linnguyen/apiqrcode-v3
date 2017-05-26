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

  def get_number_of_device_left
    thiet_bi = []
    thiet_bi_nhap = ChiTietNhapXuat.where('ma_phieu_xuat = ?', '')
    thiet_bi_nhap.each do |tb|
       thiet_bi_xuat = ChiTietNhapXuat.where('ma_phieu_nhap = ? and ma_thiet_bi = ?', '',tb.ma_thiet_bi)
      if thiet_bi_xuat.nil?
        thiet_bi << ChiTietNhapXuat.new(ma_thiet_bi: tb.ma_thiet_bi, ten_thiet_bi: tb.ten_thiet_bi, so_luong: tb.so_luong)
      else
        count = 0
        thiet_bi_xuat.each do |tbx|
           count = count + tbx.so_luong
        end
        value = tb.so_luong - count
        thiet_bi << ChiTietNhapXuat.new(ma_thiet_bi: tb.ma_thiet_bi, ten_thiet_bi: tb.ten_thiet_bi, so_luong: value)
      end
    end
    render  json: {:device_left => thiet_bi}
  end

end
