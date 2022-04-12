class PresentAnalysisService
  # プレゼントに関わる診断

  def initialize(user, twitter_client, tweets)
    @user = user
    @twitter_client = twitter_client
    @tweets = tweets
  end

  def call
    words = ['プレゼント', 'CHANEL', 'コットン', 'GUCCI', '4℃', 'クロエ', 'ロイヤルミルクティー', 'サイゼリヤ', '指輪', 'お寿司', '奢り', '奢られ', 'バレンタイン', 'ホワイトデー', 'クリスマス', 'バッグ', 'ネックレス', 'ブランド', 'シャネル', 'グッチ', 'いらない', 'もらった', 'ハイブラ']
    present = 0
    words.each do |word|
      present += @tweets.filter{|tweet| tweet.text.include?(word)}.size
    end

    present_point = case present
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
