class NhanVien < ApplicationRecord
	self.table_name = "tb_nhan_vien"
	has_many :phieu_xuat , foreign_key: "ma_nql", class_name: "PhieuXuat"
end