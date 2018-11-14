module YoutubeHelper
  # Logs in the given user.
  require 'net/http'
  require 'json'

  def you_tube_search

      @find_array = [" ", "Football", "Tennis", "Rugby", "Golf", "Formula 1"]

    @search_array = [" ","UCYN6dfKAmlMBRd-thhEzsBg", "UCbcxFkd6B9xUU54InHv4Tig", "UCLbW1klIl3T1XCp8hHYZGMw", "UCKwGZZMrhNYKzucCtTPY2Nw", "UCB_qr75-ydFVKSF9Dmo6izg"]

    sport_search = params[:user]["sport_ids"]
    @user_search = []
    @find_sport = []

    sport_search.each do |i|
    if  i == "1"
      @user_search << @search_array[1]
      @find_sport << @find_array[1]
    end
      if  i == "2"
        @user_search << @search_array[2]
        @find_sport << @find_array[2]
      end
        if  i == "3"
          @user_search << @search_array[3]
          @find_sport << @find_array[3]
        end
          if  i == "4"
            @user_search << @search_array[4]
            @find_sport << @find_array[4]
          end
            if  i == "5"
              @user_search << @search_array[5]
              @find_sport << @find_array[5]
            end

  end

      for @i in 0..@user_search.length-1 do

      url = "https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=#{@user_search[@i]}&publishedAfter=2018-11-10T00%3A00%3A00Z&type=video&videoEmbeddable=true&key=AIzaSyDBfjI6j1bm5ldQkUaUh_cZ0HNV-xWLyMg"
      uri = URI(url)
      response = Net::HTTP.get(uri)

      json_parse(JSON.parse(response))

    end
  end

  def json_parse(data)

    for i in 0..4 do

      y_url = data["items"][i]["id"]["videoId"]
      db_entry = "https://youtube.com/embed/#{y_url}"

      sport_id = Sport.find_by(name: @find_sport[@i])

      YouTube.create(user_id: session[:user_id], sports_id: sport_id.id ,video_url: db_entry)
    end

  end



end
