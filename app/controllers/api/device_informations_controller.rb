class Api::DeviceInformationsController < ApplicationController
	def show_info
         chi_tiet_phieu_xuat =  ChiTietThietBiXuat.find_by(ma_qr: params[:qrcode])
         if chi_tiet_phieu_xuat.nil?
         	 render json: {:message => "Không có dữ liệu cho mã QR này!"}
         else
         	 phieu_xuat =  chi_tiet_phieu_xuat.phieu_xuat
             thiet_bi = phieu_xuat.chi_tiet_nhap_xuat.find_by(ma_code: params[:qrcode][0..14]) # -> one device
             # byebug
             nhan_vien = phieu_xuat.nhan_vien
             nuoc_san_xuat = thiet_bi.nuoc_san_xuat
             render json: {:staff => nhan_vien, :device => thiet_bi, :origin => nuoc_san_xuat }
         end
         # optimize code
    end
end
