require 'flickr_fu'
class StaticPagesController < ApplicationController
	def home 

	end
	def create
		@flickr = Flickr.new(Rails.root.join('config','flickr.yml'))
		@photos = @flickr.photos.search(:tags => 'ruby-flickr')
		render 'home'
	end
end
