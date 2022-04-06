class ApoAnalysisService
  # アポ度の診断

  def initialize(user, twitter_client, tweets)
    @user = user
    @twitter_client = twitter_client
    @tweets = tweets
  end

  def call
    words = ['アポ', 'マッチングアプリ', '結婚相談所', '相席屋', '婚活', '仮交際', 'デート', '交際', '会いたい', '打診', '土日', 'ブロック', 'FO', '予約', '待ち合わせ']
    apo = 0
    words.each do |word|
      apo += @tweets.filter{|tweet| tweet.text.include?(word)}.size
    end

    apo_point = case apo
              when 0..5
                1
              when 6..20
                1.5
              when 21..30
                2
              when 21..30
                2.5
              when 31..40
                3
              when 41..50
                3.5
              when 51..60
                4
              when 61..70
                4.5
              else
                5
              end
  end
end
