class ResultsController < ApplicationController
  before_action :twitter_client

  def index
    @tweets = []
    @client.user_timeline("rouninsaikouw", exclude_replies: false, include_rts: true).take(25).each do |tw|
      @tweets << tw.text
    end
  end
end
