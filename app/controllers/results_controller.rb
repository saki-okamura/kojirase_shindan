class ResultsController < ApplicationController

  def index
    @client = Twitter::REST::Client.new do |config|
      # 取得したキーを入れる
      config.consumer_key = ENV['CONSUMER_KEY']
      config.consumer_secret = ENV['CONSUMER_SECRET']
      config.access_token = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_SECRET']
    end
    @tweets = []
    @client.user_timeline("rouninsaikouw", exclude_replies: false, include_rts: true).take(25).each do |tw|
      @tweets << tw.text
    end
    puts @client.user.name
  end
end
