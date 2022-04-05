class ResultsController < ApplicationController

  def show
    @user = twitter_client.user(params[:user])
    #@tweets = twitter_client.user_timeline(params[:user].to_i, count: 200, tweet_mode: 'extended')
    #@follower_point = FollowerAnalysisService.new(params[:user]).call
    #@spec_point = SpecAnalysisService.new(params[:user]).call
    #@present_point = PresentAnalysisService.new(params[:user]).call
    #@apo_point = ApoAnalysisService.new(params[:user]).call
    #@numa_point = NumaAnalysisService.new(params[:user]).call
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
