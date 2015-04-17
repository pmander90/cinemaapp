class MoviesController < ApplicationController
	
	def index
		@movies = current_user.movies
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = current_user.movies.new(title: params[:title], year: params[:year], imdbid: params[:imdbid])
		if @movie.save
			redirect_to root_path
		else
		end
	end

	def destroy
	end


end