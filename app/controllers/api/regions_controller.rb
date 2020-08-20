class Api::RegionsController < ApplicationController
  def index
    puts params
    
    region_response = HTTP.headers({
      "X-eBirdApiToken" => "#{Rails.application.credentials.ebird_api[:api_key]}"
      }).get("https://api.ebird.org/v2/ref/region/list/#{params[:subnational]}/#{params[:region]}.JSON")
    @regions = region_response.parse
    

    render 'index.json.jb'
  end
end
