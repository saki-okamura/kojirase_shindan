$(function () {
  // ユーザー名
  $('#result-name').delay(1000).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  // こじらせレベル表示
  $('#kojirase-level-title').delay(2000).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  // こじらせメッセージの表示
  $('#kojirase-message').delay(3000).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  // フォロワーメッセージの表示
  $('#follower-message').delay(4000).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  // アドバイスの表示
  $('#advice-message').delay(5000).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  // 処方箋
  $('#prescription-label').delay(6000).queue(function () {
    $(this).addClass("is-opacity-active");
  });

  $('#prescription-contents').delay(7000).queue(function () {
    $(this).addClass("is-opacity-active");
  });
});
