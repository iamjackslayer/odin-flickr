require 'flickraw'
class StaticPagesController < ApplicationController

	def home 
		FlickRaw.api_key="02ec0f82e01c354e9b237f87b31ffd34"
		FlickRaw.shared_secret="8db725aa215775af"

		@list = flickr.photos.getRecent
		@id = list[0].id
		@secret = list[0].secret
		@info = flickr.photos.getInfo :photo_id => @id, :secret => @secret

		
	end
	def create
		
		render 'home'
	end
end
