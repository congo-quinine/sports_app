module YoutubeHelper
  # Logs in the given user.
  require 'net/http'
  require 'json'
  require 'date'


  def you_tube_search

    @time = Date.today-4
    @time = @time.strftime

    @find_array = [" ", "Football", "Tennis", "Rugby", "Golf", "Formula 1", "Ice Hockey", "Skateboarding", "NFL"]

    @search_array = [" ","UCYN6dfKAmlMBRd-thhEzsBg", "UCbcxFkd6B9xUU54InHv4Tig", "UCLbW1klIl3T1XCp8hHYZGMw", "UCKwGZZMrhNYKzucCtTPY2Nw", "UCB_qr75-ydFVKSF9Dmo6izg", "UCqFMzb-4AUf6WAIbl132QKA", "UCt16NSYjauKclK67LCXvQyA", "UCDVYQ4Zhbm3S2dlz7P1GBDg"]

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
      if  i == "6"
        @user_search << @search_array[6]
        @find_sport << @find_array[6]
      end
      if  i == "7"
        @user_search << @search_array[7]
        @find_sport << @find_array[7]
      end
      if  i == "8"
        @user_search << @search_array[8]
        @find_sport << @find_array[8]
      end

    end

      for @i in 0..@user_search.length-1 do

      url = "https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=#{@user_search[@i]}&publishedAfter=#{@time}T00%3A00%3A00Z&type=video&videoEmbeddable=true&key=AIzaSyDBfjI6j1bm5ldQkUaUh_cZ0HNV-xWLyMg"
      uri = URI(url)
      response = Net::HTTP.get(uri)

      json_parse(JSON.parse(response))

    end
  end

  def json_parse(data)

    for i in 0..4 do

      y_url = data["items"][i]["id"]["videoId"]
      db_entry = "https://youtube.com/embed/#{y_url}"
      db_title = data["items"][i]["snippet"]["title"]
      date = data["items"][0]["snippet"]["publishedAt"].split('T')[0]

      sport_id = Sport.find_by(name: @find_sport[@i])

      YouTube.create(user_id: session[:user_id], sports_id: sport_id.id ,video_url: db_entry, title: db_title, vid_date: date)
    end

  end



end
