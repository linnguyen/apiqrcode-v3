class NhanVien < ApplicationRecord
	self.table_name = "tb_nhan_vien"
	has_many :phieu_xuat , foreign_key: "ma_nql", class_name: "PhieuXuat"
	belongs_to :phong_thuc_hanh, foreign_key: "ma_pth", class_name: "PhongThucHanh"
    # has_secure_password
end