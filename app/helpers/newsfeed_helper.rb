module NewsfeedHelper

require 'open-uri'
require 'net/http'
require 'json'

  def news_search

    @time = Date.today-3
    @time = @time.strftime


    url = 'https://newsapi.org/v2/top-headlines?sources=bbc-sport&apiKey=c1273f98993843b080243b854d2a61a6'

    uri = URI(url)
    response = Net::HTTP.get(uri)

    JSON.parse(response)
  end

end
