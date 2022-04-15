const result_name = document.getElementById("result-name")
const kojirase_level_title = document.getElementById("kojirase-level-title")
const kojiraseChart = document.getElementById("kojiraseChart")
const kojirase_message = document.getElementById("kojirase-message")
const follower_message = document.getElementById("follower-message")
const advice_message = document.getElementById("advice-message")
const prescription_label = document.getElementById("prescription-label")
const prescription_contents = document.getElementById("prescription-contents")
const card_group = document.getElementById("card-group")


$(function () {
  // ユーザー名
  $(result_name).delay(10000).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  // こじらせレベル表示
  $(kojirase_level_title).delay(10500).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  // チャートの表示
  $(kojiraseChart).delay(11500).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  // こじらせメッセージの表示
  $(kojirase_message).delay(12500).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  // フォロワーメッセージの表示
  $(follower_message).delay(13500).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  // アドバイスの表示
  $(advice_message).delay(14000).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  // 処方箋
  $(prescription_label).delay(15000).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  $(prescription_contents).delay(15500).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  $(card_group).delay(16000).queue(function () {
    $(this).addClass("is-opacity-active");
  });
});
