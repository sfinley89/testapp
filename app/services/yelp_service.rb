# app/services/yelp_service.rb

class YelpService 

	def search(city, tags)
		yelpParams = { term: tags,
           limit: 3
           #category_filter: 'discgolf'
         }
		yelpLocale = { lang: 'en' }
		yelpResponse = Yelp.client.search(city, yelpParams, yelpLocale)

		@results = Array.new 

		yelpResponse.businesses.each do |b|

			@results << [ 
				id: b.id, 
				img: b.image_url, 
				name: b.name, 
				address: b.location.display_address 
				#coord: b.coordinates
				]
		end 

		return @results 
	
	end 
end 