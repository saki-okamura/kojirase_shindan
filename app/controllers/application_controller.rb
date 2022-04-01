class ApplicationController < ActionController::Base
  # 環境変数の設定
  Dotenv.load
  HOSTNAME = ENV['HOSTNAME']
end
