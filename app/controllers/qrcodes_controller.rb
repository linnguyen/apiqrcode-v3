class QrcodesController < ApplicationController
	require 'rqrcode'

	def generate
		if params[:text].present?
			@qr = RQRCode::QRCode.new( params[:text], size: 4)
			respond_to do |format|
              format.js
            # format.html{redirect_to qrcodes_path(@qr)}
            end
            else
			@qr = RQRCode::QRCode.new( "default", size: 4)
		end
	end
end
