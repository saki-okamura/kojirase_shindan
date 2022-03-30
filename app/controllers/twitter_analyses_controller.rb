class TwitterAnalysesController < ApplicationController

  def twitter_analysis
    client = Twitter::REST::Client.new do |config|
      # 取得したキーを入れる
      config.consumer_key = 'xxxxxxxxxxxxx'
      config.consumer_secret = 'yyyyyyyyyyy'
    end

    @tweets = []
    client.user_timeline("KnyWya", exclude_replies: false, include_rts: true).take(100).each do |tw|
      @tweets << tw.text
    end
  end
end
