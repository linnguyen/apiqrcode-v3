class DeXuatPhoiLieu < ApplicationRecord
	self.table_name = "tb_de_xuat_phoi_lieu"
	has_many :chi_tiet_de_xuat_phoi_lieu , foreign_key: "ma_dxpl", class_name: "ChiTietDeXuatPhoiLieu", dependent: :destroy
    belongs_to :nhan_vien , foreign_key: "ma_nql", class_name: "NhanVien"
    # enum trang_thai: [:dang_cho, :da_xu_li]
    # enum xac_nhan: [:non_ok, :ok]
    
    # 0: dang cho, 1: da xu li
    # 0: non_ok, 1: ok
    before_save :default_values
    def default_values
          self.xac_nhan ||= 0
    end
end