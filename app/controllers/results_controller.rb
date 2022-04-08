class ResultsController < ApplicationController
  before_action :referrer_root_url?, only: %i(show)

  def show
    @user = twitter_client.user(params[:user])
    tweets = twitter_client.user_timeline(params[:user], count: 200, tweet_mode: 'extended')
    @follower_point = FollowerAnalysisService.new(params[:user], twitter_client).call
    @spec_point = SpecAnalysisService.new(params[:user], twitter_client, tweets).call
    @present_point = PresentAnalysisService.new(params[:user], twitter_client, tweets).call
    @apo_point = ApoAnalysisService.new(params[:user], twitter_client, tweets).call
    @numa_point = NumaAnalysisService.new(params[:user], twitter_client, tweets).call
  end

  private

  def twitter_client
    @twitter_client ||= Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['CONSUMER_KEY']
      config.consumer_secret = ENV['CONSUMER_SECRET']
      config.access_token = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_SECRET']
    end
  end

end
