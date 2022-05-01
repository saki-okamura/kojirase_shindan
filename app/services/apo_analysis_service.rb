class ApoAnalysisService
  # アポ(アポイントメント)やデート、お見合いに関するワード

  def initialize(user, twitter_client, tweets)
    @user = user
    @twitter_client = twitter_client
    @tweets = tweets
  end

  def call
    words = %w[アポ マッチングアプリ 結婚 相談所 相席屋 婚活 仮交際 デート 真剣交際 打診 ブロック FO 待ち合わせ
               お見合い ラウンジ LINE ライン]
    apo = 0
    words.each do |word|
      apo += @tweets.filter { |tweet| tweet.text.include?(word) }.size
    end

  # wordsの個数によってapo_pointを点数化
    apo_point = case apo
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
