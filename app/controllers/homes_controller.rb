class HomesController < ApplicationController
	before_action :logged_in_user, only: [:index]
    def index
    	d = get_amount_of_output_device_by_room 'D110','TB00001'
    	byebug
    end
end
