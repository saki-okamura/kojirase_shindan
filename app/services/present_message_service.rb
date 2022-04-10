class PresentMessageService

  def initialize(present_point)
    @present_point = present_point
  end

  def call
    @present_message = if @present_point >= 2
                        '某ネックレスをもらっても死ぬほど喜ぶようにしましょう'
                      else
                        'ファミレスでデートしても楽しむようにしましょう'
                      end
  end
end
