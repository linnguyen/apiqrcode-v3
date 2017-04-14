class PhieuXuat < ApplicationRecord
	self.table_name = "tb_phieu_xuat"
	has_many :chi_tiet_nhap_xuat, foreign_key: "ma_phieu_xuat", class_name: "ChiTietNhapXuat"
	has_many :chi_tiet_thiet_bi_xuat, foreign_key: "ma_phieu_xuat", class_name: "ChiTietThietBiXuat"
	belongs_to :nhan_vien , foreign_key: "ma_nql", class_name: "NhanVien"
end