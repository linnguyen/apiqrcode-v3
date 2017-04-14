class PhieuNhap < ApplicationRecord
	self.table_name = "tb_phieu_nhap"
	has_many :chi_tiet_nhap_xuat, foreign_key: "ma_phieu_nhap", class_name: "ChiTietNhapXuat"
end