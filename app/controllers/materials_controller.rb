class MaterialsController < ApplicationController
	require "json"
    def new
	end
	def create
		mon = params[:mon]
		li_do = params[:li_do]
		dxpl = current_user.de_xuat_phoi_lieu.create(mon: mon, li_do: li_do, thoi_gian: Time.now)

		params[:duLieuDeXuat].each { |k,v|
		 ten_vat_tu_phoi_lieu = v[:ten_vat_tu_phoi_lieu]
         qui_cach = v[:qui_cach]
         chung_loai = v[:chung_loai]
         xuat_xu = v[:xuat_xu]
         don_vi_tinh = v[:don_vi_tinh]
         tong_so = v[:tong_so]
         da_co = v[:da_co]
         mua_moi = v[:mua_moi]     
         dxpl.chi_tiet_de_xuat_phoi_lieu.create(ten_vat_tu_phoi_lieu: ten_vat_tu_phoi_lieu,
           	                                      qui_cach: qui_cach,
           	                                      chung_loai: chung_loai,
           	                                      xuat_xu: xuat_xu,
           	                                      don_vi_tinh: don_vi_tinh,
           	                                      tong_so: tong_so,
           	                                      da_co: da_co,
           	                                      mua_moi: mua_moi)
        }

	end
	def index_user
		@dexuatphoilieu = current_user.de_xuat_phoi_lieu
	end
	def index_admin
		@dexuatphoilieu = DeXuatPhoiLieu.all
	end
end
