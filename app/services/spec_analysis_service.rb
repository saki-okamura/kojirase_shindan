class SpecAnalysisService
  # 異性に求めるスペックのワード(学歴・年収・顔・身長など)

  def initialize(user, twitter_client, tweets)
    @user = user
    @twitter_client = twitter_client
    @tweets = tweets
  end

  def call
    words = %w[高い 安い 身長 体重 年収 万円 学歴 職業 見た目 イケメン 理想 スタイル]
    spec = 0
    words.each do |word|
      spec += @tweets.filter { |tweet| tweet.text.include?(word) }.size
    end

    # wordsの個数によってspec_pointを点数化
    spec_point = case spec
                 when 0..5
                   1
                 when 6..10
                   1.5
                 when 11..20
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
