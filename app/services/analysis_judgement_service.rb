class AnalysisJudgementService

  def initialize(spec_point, apo_point, numa_point)
    @spec_point = spec_point
    @apo_point = apo_point
    @numa_point = numa_point
  end

  def call
    @result_title = if  @spec_point <= 1.5 && @apo_point == 1.0 && @numa_point == 1.0
                      '非こじらせ'
                    elsif @spec_point <= 2 && @apo_point <= 2 && @numa_point <= 3
                      'こじらせ予備軍'
                    elsif @spec_point <= 3 && @apo_point <= 3 && @numa_point <= 3.5
                      'そこそここじらせ'
                    elsif @spec_point <= 4 || @apo_point <= 4 || @numa_point <= 4
                      'かなり重症'
                    elsif @spec_point <= 5 || @apo_point <= 5 || @numa_point <= 5
                      '重症'
                    end
  end
end
