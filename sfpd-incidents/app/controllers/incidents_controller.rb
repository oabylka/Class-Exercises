class IncidentsController < ApplicationController

	def index
		@incidents = Unirest.get("https://data.sfgov.org/resource/cuks-n6tp.json").body
	end
end
