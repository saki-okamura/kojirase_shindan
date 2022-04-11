class ResultService
  attr_accessor :follower_point
  attr_accessor :spec_point
  attr_accessor :apo_point
  attr_accessor :numa_point
  attr_accessor :present_point

  def kojirase_level
    if  @spec_point <= 1.5 && @apo_point == 1.0 && @numa_point == 1.0
      1
    elsif @spec_point <= 2 && @apo_point <= 2 && @numa_point <= 3
      2
    elsif @spec_point <= 3 && @apo_point <= 3 && @numa_point <= 3.5
      3
    elsif @spec_point <= 4 || @apo_point <= 4 || @numa_point <= 4
      4
    elsif @spec_point <= 5 || @apo_point <= 5 || @numa_point <= 5
      5
    end
  end


  def kojirase_level_title
    case kojirase_level
    when 1
      '非こじらせ'
    when 2
      'こじらせ予備軍'
    when 3
      'そこそここじらせ'
    when 4
      'かなり重症'
    when 5
      '重症'
    end
  end

  def kojirase_message
    case kojirase_level
    when 1
      '今のところはこじらせの傾向はありません'
    when 2
      '自分でも気づかないこじらせが垣間見えます'
    when 3
      'こじらせていて沼に陥っている可能性があります'
    when 4
      '異性に求めるレベルが高くなっている傾向があります'
    when 5
      '手が付けられないほどこじらせています'
    end
  end

  def follower_message
    if kojirase_revel == 1 && @follower_point <= 1.5
      'こじらせの縮小垢という可能性も存在しています'
    elsif kojirase_level == 1 && @follower_point <= 2.5
      'ツイート内容からは特にこじらせの片鱗が観測されませんでした'
    elsif kojirase_level == 1 && @follower_point <= 3.5
      'こじらせ界隈ではないですが、バズってフォロワーが増えた可能性もあります'
    elsif kojirase_level == 1 && @follower_point <= 4.5
      '影響力があるアカウントなのでツイートを真似してみましょう'
    elsif kojirase_level == 1 && @follower_point <= 5
      'インフルエンサーの素質があるのでこじらせツイートをしたときにはバズるかもしれません'
    elsif kojirase_level == 2 && @follower_point <= 1.5
      '一見普通のアカウントのようですが、闇の部分を感じます'
    elsif kojirase_level == 2 && @follower_point <= 2.5
      '一見普通のアカウントのようですが、こじらせの片鱗が観測されました'
    elsif kojirase_level == 2 && @follower_point <= 3.5
      'こじらせ界隈では少し有名かもしれません'
    elsif kojirase_level == 2 && @follower_point <= 4.5
      'こじらせ界隈では有名人の可能性があります'
    elsif kojirase_level == 2 && @follower_point <= 5
      'こじらせ界隈の中ではかなり有名です'
    elsif kojirase_level == 3 && @follower_point <= 1.5
      '影響力は少ないですが、こじらせの素質が感じられます'
    elsif kojirase_level == 3 && @follower_point <= 2.5
      '一見普通のアカウントのようですが、覗いてみると闇が感じられます'
    elsif kojirase_level == 3 && @follower_point <= 3.5
      '恋愛についてのツイートが多めです。参考程度に覗いてみましょう'
    elsif kojirase_level == 3 && @follower_point <= 4.5
      '恋愛についてのツイートでバズったかもしれません'
    elsif kojirase_level == 3 && @follower_point <= 5
      'インフルエンサーの可能性もあるので、参考にするのは危険です'
    elsif kojirase_level == 4 && @follower_point <= 1.5
      '影響力は少ないですが、沼に陥っている可能性が高いです'
    elsif kojirase_level == 4 && @follower_point <= 2.5
      '一見普通のアカウントのようですが、かなり闇の部分が観測されました'
    elsif kojirase_level == 4 && @follower_point <= 3.5
      '参考程度に覗いてみて、自分の恋愛の反名教師にしてみましょう'
    elsif kojirase_level == 4 && @follower_point <= 4.5
      '恋愛についての自伝を唱え、バズった可能性があります'
    elsif kojirase_level == 4 && @follower_point <= 5
      '参考にするのは危険なアカウントです'
    elsif kojirase_level == 5 && @follower_point <= 1.5
      'こじらせ専用の縮小垢の可能性が高いです'
    elsif kojirase_level == 5 && @follower_point <= 2.5
      '影響力は少ないものの、こじらせは本物です'
    elsif kojirase_level == 5 && @follower_point <= 3.5
      '界隈でかなり有名なアカウントです。参考にはしないほうがいいです'
    elsif kojirase_level == 5 && @follower_point <= 4.5
      'こじらせでバズってフォロワーを集めた可能性があります'
    elsif kojirase_level == 5 && @follower_point <= 5
      '参考にするのはかなり危険なアカウントです'
    end
  end

  def present_message
    if present_point >= 2
      'ファミレスでデートしても楽しむようにしましょう'
    else
      '某ネックレスをもらっても死ぬほど喜びましょう'
    end
  end

end
