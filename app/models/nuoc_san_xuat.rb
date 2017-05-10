class NuocSanXuat < ApplicationRecord
	self.table_name = "tb_nuoc_san_xuat"
	has_many :chi_tiet_nhap_xuat, foreign_key: "ma_nuoc_san_xuat", class_name: "ChiTietNhapXuat"
end