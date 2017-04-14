class PhongThucHanh < ApplicationRecord
	self.table_name = "tb_phong_thuc_hanh"
	has_many :kiem_ke, foreign_key: "ma_pth", class_name: "KiemKe"
	has_many :nhan_vien, foreign_key: "ma_pth", class_name: "NhanVien"
end