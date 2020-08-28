class Api::BirdsController < ApplicationController
  def index
    response = HTTP.headers({
      "X-eBirdApiToken" => "#{Rails.application.credentials.ebird_api[:api_key]}"
      }).get("https://api.ebird.org/v2/data/obs/#{params[:name]}/recent")
    @birds = response.parse
    
    render 'index.json.jb'
  end
end
