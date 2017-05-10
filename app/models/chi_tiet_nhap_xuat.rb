class ChiTietNhapXuat < ApplicationRecord
	self.table_name = "tb_chi_tiet_nhap_xuat"
	belongs_to :phieu_xuat, foreign_key: "ma_phieu_xuat", class_name: "PhieuXuat", optional: true
	belongs_to :phieu_nhap, foreign_key: "ma_phieu_nhap", class_name: "PhieuNhap", optional: true
    belongs_to :nuoc_san_xuat, foreign_key: "ma_nuoc_san_xuat", class_name: "NuocSanXuat"
end
