class NhanVien < ApplicationRecord
	self.table_name = "tb_nhan_vien"
	has_many :phieu_xuat , foreign_key: "ma_nql", class_name: "PhieuXuat"
	belongs_to :phong_thuc_hanh, foreign_key: "ma_pth", class_name: "PhongThucHanh"
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :ho_ten, presence: true, length: {maximum: 50}
    validates :email, presence: true, length: {maximum: 255},
                      format: {with: VALID_EMAIL_REGEX},
                      uniqueness: true
    validates :ten_dang_nhap, presence: true,length: {maximum: 50},
                      uniqueness: true
    has_secure_password
end