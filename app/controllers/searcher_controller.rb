class SearcherController < ApplicationController
  def index
  end

  def search
  	@params = params

  	# call YELP for results. 
  	# add more calls later. 
  	yelp = YelpService.new(); 
  	@results = yelp.search(@params[:city], @params[:tags])
  	#render plain: @results
  	
  end

end
