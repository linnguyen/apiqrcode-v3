class PhieuXuat < ApplicationRecord
	self.table_name = "tb_phieu_xuat"
	has_many :chi_tiet_nhap_xuat
	has_many :chi_tiet_thiet_bi_xuat
	belongs_to :nhan_vien , foreign_key: "ma_nql", class_name: "NhanVien"
end