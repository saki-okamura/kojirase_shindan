# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

KojiraseResult.create(
  level: 1,
  name: "非こじらせ",
  description: "今のところはこじらせの傾向はありません",
  advice: "このままこじらせないまま恋愛していくと、良縁に巡り合えるかも？"
)

KojiraseResult.create(
  level: 2,
  name: "こじらせ予備軍",
  description: "将来こじらせてしまう可能性があります",
  advice: "異性からプレゼントをもらった場合はどんなものでも死ぬほど喜びましょう！"
)

KojiraseResult.create(
  level: 3,
  name: "そこそこのこじらせ",
  description: "こじらせ沼に陥っている可能性があります",
  advice: "某ファミレスでディナーをしても楽しむようにしましょう！"
)

KojiraseResult.create(
  level: 4,
  name: "かなり重症",
  description: "こじらせ度合いはもう一人前です",
  advice: "異性のスペックだけでなく、中身も見るようにしましょう！"
)

KojiraseResult.create(
  level: 5,
  name: "重症",
  description: "手が付けられないほどこじらせています",
  advice: "相手にばかり求めていませんか？自分のことを見直すことも必要です！"
)

  def follower_message
    if kojirase_level == 1 && @follower_point <= 1.5
      'こじらせの縮小垢という可能性もわずかに存在しています'
    elsif kojirase_level == 1 && @follower_point <= 2.5
      'ツイート内容からも特にこじらせの片鱗が観測されませんでした'
    elsif kojirase_level == 1 && @follower_point <= 3.5
      'こじらせ界隈ではないですが、バズってフォロワーが増えた可能性もあります'
    elsif kojirase_level == 1 && @follower_point <= 4.5
      'そこそこ有名なのでこじらせツイートをするとバズるかもしれないです'
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
      'こじらせ界隈の有名人かもしれません'
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
