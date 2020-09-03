class Api::PicturesController < ApplicationController
  def index
    bird_name = params["name"]

    response = Unsplash::Photo.search(bird_name + " bird")
    
    response_hash = response[0].to_h
    @bird_picture = response_hash[:urls]["regular"]

    render 'index.json.jb'
  end
end
