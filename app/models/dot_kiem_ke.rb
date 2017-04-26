class DotKiemKe < ApplicationRecord
	self.table_name = "tb_dot_kiem_ke"
	has_many :kiem_ke , foreign_key: "id_dot", class_name: "KiemKe"
end