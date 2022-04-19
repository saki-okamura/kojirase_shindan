class NumaAnalysisService
  # 恋愛していて悩んだり、騙されたり、不安になっているワード

  def initialize(user, twitter_client, tweets)
    @user = user
    @twitter_client = twitter_client
    @tweets = tweets
  end

  def call
    words = %w[ザオラル ヤリモク 既婚者 ブロック 浮気 メンヘラ 男性 運命 好き 不安 メンタル モラハラ]
    numa = 0
    words.each do |word|
      numa += @tweets.filter { |tweet| tweet.text.include?(word) }.size
    end

    numa_point = case numa
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
