require 'flickraw'
require 'json'
class StaticPagesController < ApplicationController

	def home 
		FlickRaw.api_key="02ec0f82e01c354e9b237f87b31ffd34"
		FlickRaw.shared_secret="8db725aa215775af"

		if params.has_key?(:user)
			if params[:user][:id]
				@user_id = params[:user][:id]
				@photos = flickr.photos.search(user_id: @user_id) 
			elsif params[:user][:user_name]
				@user_name = params[:user][:user_name]
				@user = JSON.parse(flickr.people.findByUsername(username: @user_name))
				@photos = flickr.photos.search(user_id: @user[:user][:id])
			end	
		end
	end

	def create
		
		
	end
end
