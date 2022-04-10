class ResultMessageService

  def initialize(result_title)
    @result_title = result_title
  end

  def call
    @result_message = if @result_title == '非こじらせ'
                          '今のところはこじらせの傾向はありません'
                       elsif @result_title == 'こじらせ予備軍'
                          '自分でも気づかないこじらせが垣間見えます'
                        elsif @result_title == 'そこそここじらせ'
                          'こじらせていて沼に陥っている可能性があります'
                        elsif @result_title == 'かなり重症'
                          '異性に求めるレベルが高く、こじらせています'
                        elsif @result_title == '重症'
                          '手が付けられないほどこじらせています'
                        end

  end
end
