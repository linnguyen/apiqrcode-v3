class HomesController < ApplicationController
	before_action :logged_in_user, only: [:index]
    def index
    	# render json: get_list_day
    	# byebug
    end
end
