class Api::BirdsController < ApplicationController
  def index
    response = HTTP.headers({
      "X-eBirdApiToken" => "#{Rails.application.credentials.ebird_api[:api_key]}"
      }).get("https://api.ebird.org/v2/data/obs/#{params[:name]}/recent")
    @birds = response.parse
    
    render 'index.json.jb'
  end
  
  def show
    
    
    # response = Unsplash::Photo.search("cardinal")
    # p response.class
    # p response[0].class
    # p response[0].keys
    
    @bird_picture = response
    render 'show.json.jb'
  end
end
