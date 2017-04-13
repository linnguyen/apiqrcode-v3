# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "tb_chi_thiet_thiet_bi_xuat", primary_key: "ma_ctpx", id: :string, limit: 10, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "ma_qr",         limit: 20
    t.string  "ma_phieu_xuat", limit: 15
    t.integer "ma_tinh_trang"
    t.index ["ma_tinh_trang"], name: "ma_tinh_trang", using: :btree
  end

  create_table "tb_chi_tiet_nhap_xuat", primary_key: "thiet_bi_id", id: :string, limit: 10, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "ma_thiet_bi",      limit: 10
    t.string  "ten_thiet_bi",     limit: 50
    t.string  "don_vi_tinh",      limit: 10
    t.integer "so_luong"
    t.string  "han_bao_hanh",     limit: 20
    t.string  "so_hieu_tscd",     limit: 20
    t.string  "cong_xuat",        limit: 10
    t.integer "nguyen_gia"
    t.integer "ma_nuoc_san_xuat"
    t.string  "mo_ta",            limit: 200
    t.integer "khau_hao"
    t.string  "ma_phieu_nhap",    limit: 15
    t.string  "ma_phieu_xuat",    limit: 15
    t.string  "ma_code",          limit: 30
    t.index ["ma_nuoc_san_xuat"], name: "ma_nuoc_san_xuat", using: :btree
    t.index ["ma_phieu_nhap"], name: "ma_phieu_nhap", using: :btree
    t.index ["ma_phieu_nhap"], name: "ma_phieu_nhap_2", using: :btree
    t.index ["ma_phieu_xuat"], name: "ma_phieu_xuat", using: :btree
    t.index ["ma_thiet_bi", "ma_nuoc_san_xuat", "ma_phieu_nhap", "ma_phieu_xuat"], name: "ma_thiet_bi", using: :btree
    t.index ["ma_thiet_bi"], name: "ma_thiet_bi_2", using: :btree
  end

  create_table "tb_danh_muc_chung_loai", primary_key: "ma_chung_loai", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "ten_chung_loai",   limit: 50
    t.integer "ma_nhom_thiet_bi"
    t.string  "ghi_chu",          limit: 150
    t.index ["ma_nhom_thiet_bi"], name: "ma_nhom_thiet_bi", using: :btree
  end

  create_table "tb_danh_muc_thiet_bi", primary_key: "ma_thiet_bi", id: :string, limit: 10, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "ten_thiet_bi",      limit: 100
    t.string  "dac_tinh_ky_thuat", limit: 500
    t.integer "ma_chung_loai"
    t.index ["ma_chung_loai"], name: "ma_chung_loai", using: :btree
  end

  create_table "tb_don_vi", primary_key: "ma_khoa", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "ten_khoa",      limit: 50
    t.string "so_dien_thoai", limit: 15
  end

  create_table "tb_kho", primary_key: "ma_kho", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "ten_kho",      limit: 50, null: false
    t.integer "ma_phong_ban",            null: false
    t.index ["ma_phong_ban"], name: "ma_phong_ban", using: :btree
  end

  create_table "tb_nhan_vien", primary_key: "ma_nql", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "ho_ten",        limit: 20
    t.string  "gioi_tinh",     limit: 5
    t.string  "dia_chi",       limit: 50
    t.string  "so_dien_thoai", limit: 15
    t.string  "email",         limit: 20
    t.string  "chuc_vu",       limit: 30
    t.string  "ten_dang_nhap", limit: 36
    t.string  "mat_khau",      limit: 36
    t.integer "ma_qtc"
    t.string  "ma_pth",        limit: 10
    t.integer "ma_phong_ban"
    t.integer "ma_khoa"
    t.index ["ma_khoa"], name: "MaKhoa", using: :btree
    t.index ["ma_phong_ban"], name: "ma_phong_ban", using: :btree
    t.index ["ma_pth"], name: "ma_pth", using: :btree
    t.index ["ma_qtc"], name: "ma_quyen_truy_cap", using: :btree
  end

  create_table "tb_nhom_thiet_bi", primary_key: "ma_nhom_thiet_bi", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "ten_nhom_thiet_bi", limit: 50
    t.string "ghi_chu",           limit: 100
  end

  create_table "tb_nuoc_san_xuat", primary_key: "ma_nuoc_san_xuat", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "nuoc_san_xuat", limit: 20
    t.string "ten_viet_tat",  limit: 10
  end

  create_table "tb_phieu_nhap", primary_key: "ma_phieu_nhap", id: :string, limit: 15, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.date    "ngay_nhap",                    null: false
    t.string  "nguoi_mua",         limit: 30, null: false
    t.integer "nguyen_gia",                   null: false
    t.string  "nguon_goc",         limit: 50, null: false
    t.string  "nguon_goc_tai_san", limit: 50, null: false
    t.integer "ma_kho",                       null: false
    t.index ["ma_kho"], name: "ma_kho", using: :btree
  end

  create_table "tb_phieu_xuat", primary_key: "ma_phieu_xuat", id: :string, limit: 15, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.date    "ngay_xuat"
    t.integer "ma_kho"
    t.integer "ma_nganh"
    t.integer "ma_nguoi_quan_ly"
    t.index ["ma_kho", "ma_nganh", "ma_nguoi_quan_ly"], name: "ma_kho", using: :btree
    t.index ["ma_nguoi_quan_ly"], name: "ma_nguoi_quan_ly", using: :btree
  end

  create_table "tb_phong_ban", primary_key: "ma_phong_ban", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "ten_phong_ban", limit: 50
    t.string "so_dien_thoai", limit: 15
  end

  create_table "tb_phong_thuc_hanh", primary_key: "ma_pth", id: :string, limit: 10, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "phong_thuc_hanh", limit: 50, null: false
    t.string "ghi_chu",         limit: 50, null: false
  end

  create_table "tb_quyen_truy_cap", primary_key: "ma_quyen", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "quyen", limit: 30, null: false
    t.index ["quyen"], name: "USER_ROLE_UK", unique: true, using: :btree
  end

  add_foreign_key "tb_chi_tiet_nhap_xuat", "tb_danh_muc_thiet_bi", column: "ma_thiet_bi", primary_key: "ma_thiet_bi", name: "tb_chi_tiet_nhap_xuat_ibfk_3"
  add_foreign_key "tb_chi_tiet_nhap_xuat", "tb_nuoc_san_xuat", column: "ma_nuoc_san_xuat", primary_key: "ma_nuoc_san_xuat", name: "tb_chi_tiet_nhap_xuat_ibfk_2"
  add_foreign_key "tb_chi_tiet_nhap_xuat", "tb_phieu_xuat", column: "ma_phieu_xuat", primary_key: "ma_phieu_xuat", name: "tb_chi_tiet_nhap_xuat_ibfk_4"
  add_foreign_key "tb_danh_muc_chung_loai", "tb_nhom_thiet_bi", column: "ma_nhom_thiet_bi", primary_key: "ma_nhom_thiet_bi", name: "tb_danh_muc_chung_loai_ibfk_1"
  add_foreign_key "tb_danh_muc_thiet_bi", "tb_danh_muc_chung_loai", column: "ma_chung_loai", primary_key: "ma_chung_loai", name: "tb_danh_muc_thiet_bi_ibfk_1"
  add_foreign_key "tb_kho", "tb_phong_ban", column: "ma_phong_ban", primary_key: "ma_phong_ban", name: "tb_kho_ibfk_1"
  add_foreign_key "tb_nhan_vien", "tb_don_vi", column: "ma_khoa", primary_key: "ma_khoa", name: "tb_nhan_vien_ibfk_2"
  add_foreign_key "tb_nhan_vien", "tb_phong_ban", column: "ma_phong_ban", primary_key: "ma_phong_ban", name: "tb_nhan_vien_ibfk_4"
  add_foreign_key "tb_nhan_vien", "tb_phong_thuc_hanh", column: "ma_pth", primary_key: "ma_pth", name: "tb_nhan_vien_ibfk_3"
  add_foreign_key "tb_nhan_vien", "tb_quyen_truy_cap", column: "ma_qtc", primary_key: "ma_quyen", name: "tb_nhan_vien_ibfk_1"
  add_foreign_key "tb_phieu_nhap", "tb_kho", column: "ma_kho", primary_key: "ma_kho", name: "tb_phieu_nhap_ibfk_1"
  add_foreign_key "tb_phieu_xuat", "tb_nhan_vien", column: "ma_nguoi_quan_ly", primary_key: "ma_nql", name: "tb_phieu_xuat_ibfk_1"
end
