class OmdbController < ApplicationController

	def index
	end

	def show
		title = params[:title].split.join("%20")
		year = params[:year]
		@response = HTTParty.get("http://www.omdbapi.com/?t=#{title}&y=#{year}")
		render :result
	end

end