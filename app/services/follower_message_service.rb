class FollowerMessageService

  def initialize(follower_point)
   @follower_point = follower_point
  end

  def call
    @follower_message = if @follower_point <= 1.5
                          'こじらせの縮小垢の可能性もあります'
                        elsif @follower_point <= 2.5
                          'アカウントは一般のものです'
                        elsif @follower_point <= 3.5
                          'バズってフォロワーが増えた可能性もあります'
                        elsif @follower_point <= 4.5
                          '界隈では有名なアカウントです。もしよければフォローしてみましょう'
                        elsif @follower_point <= 5
                          'かなり影響力があるアカウントです。もしかして、インフルエンサー？'
                        end
  end
end
