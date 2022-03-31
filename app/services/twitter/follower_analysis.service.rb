class FollowerAnalysisService

  def initialize(user)
    @user = user
  end

  def call
    follower = @user.followers_count
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
              when 5001..10000
                4
              when 10001..20000
                4.5
              else
                5
              end
  end
end
