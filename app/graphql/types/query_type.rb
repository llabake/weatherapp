module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :search_weather, GraphQL::Types::JSON, null: false do
      argument :city, String, required: true
    end
    def search_weather(city:)
			if city
				response = SearchWeather.call!(location: city)
				result = response.result
				{
					longitude: result['coord']['lon'], 
					latitude: result['coord']['lat'], 
					sunrise: result['sys']['sunrise'], 
					sunset: result['sys']['sunset']
				}
			end
		end 
  end
end
