class ResultsController < ApplicationController
  before_action :twitter_client

  def show
    if request.post?
      @user = User.new(
        name: @client.user(params[:text]).name,
        screen_name: @client.user(params[:text]).screen_name
      )
    end
  end
end
