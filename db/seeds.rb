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
