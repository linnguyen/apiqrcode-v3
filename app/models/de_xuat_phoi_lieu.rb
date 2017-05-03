class DeXuatPhoiLieu < ApplicationRecord
	self.table_name = "tb_de_xuat_phoi_lieu"
	has_many :chi_tiet_de_xuat_phoi_lieu , foreign_key: "ma_dxpl", class_name: "ChiTietDeXuatPhoiLieu"
    belongs_to :nhan_vien , foreign_key: "ma_nql", class_name: "NhanVien"
end