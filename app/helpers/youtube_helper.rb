module YoutubeHelper
  # Logs in the given user.
  require 'net/http'
  require 'json'

  def you_tube_search

# "UCbcxFkd6B9xUU54InHv4Tig", "UCLbW1klIl3T1XCp8hHYZGMw", "UCKwGZZMrhNYKzucCtTPY2Nw", "UCB_qr75-ydFVKSF9Dmo6izg"
      @search_array = ["UCYN6dfKAmlMBRd-thhEzsBg"]

      for @i in 0..@search_array.length-1

      url = "https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=#{@search_array[@i]}&publishedAfter=2018-11-10T00%3A00%3A00Z&type=video&videoEmbeddable=true&key=AIzaSyDBfjI6j1bm5ldQkUaUh_cZ0HNV-xWLyMg"
      uri = URI(url)
      response = Net::HTTP.get(uri)

      json_parse(JSON.parse(response))

    end
  end

  def json_parse(data)

    for i in 0..4 do

      y_url = data["items"][i]["id"]["videoId"]
      db_entry = "https://youtube.com/watch?v=#{y_url}"

      find_array = ["Football", "Tennis", "Rugby", "Golf", "Formula 1"]

      sport_id = Sport.find_by(name: find_array[@i])

      YouTube.create(user_id: session[:user_id], sports_id: sport_id.id ,video_url: db_entry)

    end
  end



end
