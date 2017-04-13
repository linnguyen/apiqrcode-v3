class Api::DeviceInformationsController < ApplicationController
	def show_info
         @export_bill_detail =  ExportBillDetail.find_by(qrcode: params[:qrcode])
         @export_bill =  @export_bill_detail.export_bill
         # device = @export_bill.input_output_details.where(qrcode: params[:qrcode][0..11]) -> array of device
         device = @export_bill.input_output_details.find_by(qrcode: params[:qrcode][0..11]) # -> one device
         staff = @export_bill.staff
         render json: {:staff => staff, :device => device}
    end
end
