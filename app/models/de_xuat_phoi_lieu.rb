class DeXuatPhoiLieu < ApplicationRecord
	self.table_name = "tb_de_xuat_phoi_lieu"
	default_scope -> { order(thoi_gian: :desc) }
	has_many :chi_tiet_de_xuat_phoi_lieu , foreign_key: "ma_dxpl", class_name: "ChiTietDeXuatPhoiLieu", dependent: :destroy
    belongs_to :nhan_vien , foreign_key: "ma_nql", class_name: "NhanVien"
    
    before_save :default_values
    def default_values
          self.xac_nhan ||= 0
    end

end