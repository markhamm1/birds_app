class Api::RegionsController < ApplicationController
  def index
    
    region_response = HTTP.headers({
      "X-eBirdApiToken" => "#{Rails.application.credentials.ebird_api[:api_key]}"
      }).get("https://api.ebird.org/v2/ref/region/list/subnational2/#{params[:name]}.JSON")
    @regions = region_response.parse
    

    render 'index.json.jb'
  end
end