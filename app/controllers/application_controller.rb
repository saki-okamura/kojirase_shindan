class ApplicationController < ActionController::Base
  # 環境変数の設定
  Dotenv::Railtie.load
  HOSTNAME = ENV['HOSTNAME']
end
