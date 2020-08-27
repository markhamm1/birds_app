class Api::StatesController < ApplicationController
  def index
    p params

    response = HTTP.headers({
      "X-eBirdApiToken" => "#{Rails.application.credentials.ebird_api[:api_key]}"
      }).get("https://api.ebird.org/v2/ref/region/list/subnational1/US.JSON")
    @states = response.parse
    render 'index.json.jb'
  end
end
