class SpecAnalysisService
  # 異性のスペック度の診断

  def initialize(user, twitter_client, tweets)
    @user = user
    @twitter_client = twitter_client
    @tweets = tweets
  end

  def call
    words = ['高い', '安い', '円', '筋トレ', 'ダイエット', '身長', '体重', '年収', '万円', '学歴', '職業', '見た目']
    spec = 0
    words.each do |word|
      spec += @tweets.filter{|tweet| tweet.text.include?(word)}.size
    end

    spec_point = case spec
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
