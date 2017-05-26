require 'flickraw'
class StaticPagesController < ApplicationController

	def home 
		FlickRaw.api_key="02ec0f82e01c354e9b237f87b31ffd34"
		FlickRaw.shared_secret="8db725aa215775af"

		@user_id = params[:user][:id]
		@photos = flickr.photos.search(user_id: @user_id, extra: "url") if @user_id


	end
	def create
		
		
	end
end
