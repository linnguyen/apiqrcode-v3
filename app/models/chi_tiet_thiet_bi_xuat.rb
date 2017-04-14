class ChiTietThietBiXuat < ApplicationRecord
	self.table_name = "tb_chi_tiet_thiet_bi_xuat"
	belongs_to :phieu_xuat , foreign_key: "ma_phieu_xuat", class_name: "PhieuXuat"
end