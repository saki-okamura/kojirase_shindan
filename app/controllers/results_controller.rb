class ResultsController < ApplicationController
  GOOGLE_API_KEY = ENV['GOOGLE_API_KEY']

  def show
    # 送られてきたIDからユーザーを取得
    @user = twitter_client.user(params[:user])

    # ユーザーのタイムライン200件取得
    tweets = twitter_client.user_timeline(params[:user], count: 200, tweet_mode: 'extended')

    # グラフに使うポイント取得
    @follower_point = FollowerAnalysisService.new(params[:user], twitter_client).call
    @spec_point = SpecAnalysisService.new(params[:user], twitter_client, tweets).call
    @desperate_point = DesperateAnalysisService.new(params[:user], twitter_client, tweets).call
    @apo_point = ApoAnalysisService.new(params[:user], twitter_client, tweets).call
    @numa_point = NumaAnalysisService.new(params[:user], twitter_client, tweets).call

    # 診断結果
    kojirase_level = ResultService.new(@spec_point, @apo_point, @numa_point,
                                        @desperate_point).kojirase_level

    @kojirase_result = KojiraseResult.find_by(level: kojirase_level)
    @follower_saying = FollowerSaying.find_by(kojirase_result_id: @kojirase_result.id, follower_point: @follower_point)

    # youtube
    @cat_youtube_data = find_videos('猫 癒し')
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

  def find_videos(keyword, after: 1.months.ago, before: Time.now)
    service = Google::Apis::YoutubeV3::YouTubeService.new
    service.key = GOOGLE_API_KEY

    next_page_token = nil
    opt = {
      q: keyword,
      type: 'video',
      max_results: 3,
      order: :date,
      page_token: next_page_token,
      published_after: after.iso8601,
      published_before: before.iso8601
    }
    service.list_searches(:snippet, opt)
  end
end
