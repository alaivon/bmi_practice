class AdminController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show, :welcome]
end