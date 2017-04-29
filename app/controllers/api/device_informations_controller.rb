class Api::DeviceInformationsController < ApplicationController
	def show_info
         chi_tiet_phieu_xuat =  ChiTietThietBiXuat.find_by(ma_qr: params[:qrcode])
         phieu_xuat =  chi_tiet_phieu_xuat.phieu_xuat
         thiet_bi = phieu_xuat.chi_tiet_nhap_xuat.find_by(ma_code: params[:qrcode][0..7]) # -> one device
         nhan_vien = phieu_xuat.nhan_vien
         render json: {:staff => nhan_vien, :device => thiet_bi}
         # optimize code
    end
end
