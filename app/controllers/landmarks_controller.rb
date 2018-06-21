class LandmarksController < ApplicationController
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
    @landmarks = Landmark.all
    erb :'/landmarks/new'
  end

  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])
    binding.pry
    @song.artist = Artist.find_or_create_by(name: params["Artist Name"])
    @song.genre_ids = params["genres"]
    @song.save
    flash[:message] = "Successfully created song."
    redirect "/songs/#{@song.slug}"
  end
end
