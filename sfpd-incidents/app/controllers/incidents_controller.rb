class IncidentsController < ApplicationController

	def index
		if params[:city] && params[:state]
			city = params[:city]
			state = params[:state]
		else
			city = "lodi"
			state = "ca"
		end

		@weather = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text=%22#{city},%20#{state}%22)&format=json").body
		@current_conditions = @weather["query"]["results"]["channel"]["item"]["condition"]
		@five_forecast = @weather["query"]["results"]["channel"]["item"]["forecast"]
	end

	def custom_forecast
		render "index.html.erb"
	end
end
