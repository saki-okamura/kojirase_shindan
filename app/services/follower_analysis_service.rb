class FollowerAnalysisService
  # インフルエンサー度の診断

  def initialize(user, twitter_client)
    @user = user
    @twitter_client = twitter_client
  end

  def call
    follower = @twitter_client.user(@user).followers_count

    # フォロワーの数によってfollower_pointを点数化
    follower_point = case follower
                     when 0..100
                       1
                     when 101..300
                       1.5
                     when 301..500
                       2
                     when 501..1000
                       2.5
                     when 1001..3000
                       3
                     when 3001..5000
                       3.5
                     when 5001..10_000
                       4
                     when 10_001..20_000
                       4.5
                     else
                       5
                     end
  end
end
