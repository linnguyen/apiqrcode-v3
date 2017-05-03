class ChiTietDeXuatPhoiLieu < ApplicationRecord
	self.table_name = "tb_chi_tiet_de_xuat_phoi_lieu"
    belongs_to :de_xuat_phoi_lieu , foreign_key: "ma_dxpl", class_name: "DeXuatPhoiLieu"
end
