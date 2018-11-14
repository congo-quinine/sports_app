module NewsfeedHelper

require 'open-uri'
require 'net/http'
require 'json'

  def news_search

    url = 'https://newsapi.org/v2/everything?'\
    'q=Sports&'\
    'from=2018-11-11&'\
    'sortBy=popularity&'\
    'apiKey=c1273f98993843b080243b854d2a61a6'

    uri = URI(url)
    response = Net::HTTP.get(uri)

    JSON.parse(response)
  end

end
