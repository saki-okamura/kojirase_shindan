class ApplicationController < ActionController::Base
  #herokuapp.comから独自ドメインへリダイレクト
  before_action :ensure_domain
  FQDN = 'kojirase-shindan.com'

  # redirect correct server from herokuapp domain for SEO
  def ensure_domain
    return unless /\.herokuapp.com/ =~ request.host

  # 主にlocalテスト用の対策80と443以外でアクセスされた場合ポート番号をURLに含める
    port = ":#{request.port}" unless [80, 443].include?(request.port)
    redirect_to "#{request.protocol}#{FQDN}#{port}#{request.path}", status: :moved_permanently
  end

  add_flash_types :success, :info, :warning, :danger

  rescue_from Exception, with: :render_500
  rescue_from ActionController::RoutingError, with: :render_404

  rescue_from Twitter::Error::Unauthorized, with: :unauthorized
  rescue_from Twitter::Error::NotFound, with: :not_found
  rescue_from Twitter::Error::TooManyRequests, with: :too_many_requests

  def render_500
    render file: "#{Rails.root}/public/500.html", layout: false, status: 505
  end

  # 存在しないページへのアクセス時でのエラー
  def render_404
    render file: "#{Rails.root}/public/404.html", layout: false, status: 404
  end

  def unauthorized
    flash.now[:danger] = '非公開アカウントです。公開アカウントを入力してください。'
    render 'static_pages/top'
  end

  def not_found
    flash.now[:danger] = '有効なアカウントを入力してください。'
    render 'static_pages/top'
  end

  def too_many_requests
    flash.now[:danger] = "リクエストが集中しています\n最大15分待ってから再度試して下さい。"
    render 'static_pages/top'
  end

  # 環境変数の設定
  Dotenv.load
  HOSTNAME = ENV['HOSTNAME']
end
