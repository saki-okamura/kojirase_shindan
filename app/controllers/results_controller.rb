class ResultsController < ApplicationController
  before_action :twitter_client

  def show
    @account = @client.user(params[:user])
  end
end
