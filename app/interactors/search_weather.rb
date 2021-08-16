class SearchWeather
	include HTTParty
	include Interactor

	def call()
		@location = context.location
		@api_key = Rails.application.credentials.open_weather[:api_key] 
		context.result = by_location
	end

	def by_location
		self.class.get("https://api.openweathermap.org/data/2.5/weather?q=#{@location}&appid=#{@api_key}" )
	end
end
