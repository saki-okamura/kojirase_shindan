class DesperateAnalysisService
  # 特定のプレゼントを叩いたり、モテるために必死なことをしているワード

  def initialize(user, twitter_client, tweets)
    @user = user
    @twitter_client = twitter_client
    @tweets = tweets
  end

  def call
    words = %w[コスメ タワマン 海外旅行 モテ 綺麗 可愛い ネイル 美容院 髪 ダイエット ジム 筋トレ メイク プレゼント
             CHANEL コットン GUCCI 4℃ ロイヤルミルクティー サイゼ 指輪 奢り 奢られ バレンタイン ホワイトデー クリスマス バッグ ネックレス ブランド シャネル グッチ ハイブラ サプライズ ファミレス]
    desperate = 0
    words.each do |word|
      desperate += @tweets.filter { |tweet| tweet.text.include?(word) }.size
    end

    desperate_point = case desperate
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
