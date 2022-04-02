class ApplicationController < ActionController::Base

  rescue_from Twitter::Error::Unauthorized, with: :unauthorized
  rescue_from Twitter::Error::NotFound, with: :not_found

  def unauthorized
    flash[:danger] = '非公開アカウントです。公開アカウントを入力してください。'
    redirect_to root_path
  end

  def not_found
    flash[:danger] = '有効なアカウントを入力してください。'
    redirect_to root_path
  end

  def twitter_client
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['CONSUMER_KEY']
      config.consumer_secret = ENV['CONSUMER_SECRET']
      config.access_token = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_SECRET']
    end
  end

  # 環境変数の設定
  Dotenv.load
  HOSTNAME = ENV['HOSTNAME']
end
