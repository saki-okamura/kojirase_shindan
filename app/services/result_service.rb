class ResultService
  attr_accessor :follower_point, :spec_point, :apo_point, :numa_point, :desperate_point


  def initialize(follower_point, spec_point, apo_point, numa_point, desperate_point)
    @follower_point = follower_point
    @spec_point = spec_point
    @apo_point = apo_point
    @numa_point = numa_point
    @desperate_point = desperate_point
  end

  def kojirase_level
    if  @spec_point == 1 && @apo_point == 1 && @numa_point == 1 && @desperate_point == 1
      1
    elsif @spec_point <= 2 && @apo_point <= 2 && @numa_point <= 2 && @desperate_point <= 2
      2
    elsif @spec_point <= 3 && @apo_point <= 3 && @numa_point <= 3 && @desperate_point <= 3
      3
    elsif @spec_point <= 3.5 || @apo_point <= 3.5 || @numa_point <= 3.5 || @desperate_point <= 3.5
      4
    elsif @spec_point >= 4 || @apo_point >= 4 || @numa_point >= 4 || @desperate_point >= 4
      5
    end
  end
end
