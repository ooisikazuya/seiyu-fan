// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery 
//= require jquery_ujs

// 声優の選択画面にて
document.addEventListener("turbolinks:load", function() {
  let actorName1 = $("#favorite_voice_actor_id_1").val();    // それぞれのセレクトボックスで選択した声優を変数に入れる
  let actorName2 = $("#favorite_voice_actor_id_2").val();
  let actorName3 = $("#favorite_voice_actor_id_3").val();
  if (actorName1) {    // 声優を選択した時に他のセレクトボックスの選択肢から選択した声優を非表示にする
    $('#favorite_voice_actor_id_2 option[value=' + actorName1  + ']').hide();
    $('#favorite_voice_actor_id_3 option[value=' + actorName1  + ']').hide();
  }
  if (actorName2) {
    $('#favorite_voice_actor_id_1 option[value=' + actorName2  + ']').hide();
    $('#favorite_voice_actor_id_3 option[value=' + actorName2  + ']').hide();
  }
  if (actorName3) {
    $('#favorite_voice_actor_id_1 option[value=' + actorName3  + ']').hide();
    $('#favorite_voice_actor_id_2 option[value=' + actorName3  + ']').hide();
  }
  $(document).on('change', 'select', function() {    // 声優の選択の変更
    if ($(this).attr('id') == 'favorite_voice_actor_id_1') {    // セレクトボックス毎に処理する
      if ($(this).val()) {    // 声優を選択している状態で別の声優を選択した時に他のセレクトボックスの選択肢からその声優を非表示にする
        $('#favorite_voice_actor_id_2 option[value=' + $(this).val() + ']').hide();
        $('#favorite_voice_actor_id_3 option[value=' + $(this).val() + ']').hide();
      }
      if (actorName1) {    // 他のセレクトボックスの選択肢に選択していた声優を表示する
        $('#favorite_voice_actor_id_2 option[value=' + actorName1 + ']').show();
        $('#favorite_voice_actor_id_3 option[value=' + actorName1 + ']').show();
      }
      actorName1 = $(this).val();  // 変更した声優を変数に入れる
    } else if ($(this).attr('id') == 'favorite_voice_actor_id_2') {
      if ($(this).val()) {
        $('#favorite_voice_actor_id_1 option[value=' + $(this).val() + ']').hide();
        $('#favorite_voice_actor_id_3 option[value=' + $(this).val() + ']').hide();
      }
      if (actorName2) {
        $('#favorite_voice_actor_id_1 option[value=' + actorName2 + ']').show();
        $('#favorite_voice_actor_id_3 option[value=' + actorName2 + ']').show();
      }
      actorName2 = $(this).val();
    } else if ($(this).attr('id') == 'favorite_voice_actor_id_3') {
      if ($(this).val()) {
        $('#favorite_voice_actor_id_1 option[value=' + $(this).val() + ']').hide();
        $('#favorite_voice_actor_id_2 option[value=' + $(this).val() + ']').hide();
      }
      if (actorName3) {
        $('#favorite_voice_actor_id_1 option[value=' + actorName3 + ']').show();
        $('#favorite_voice_actor_id_2 option[value=' + actorName3 + ']').show();
      }
      actorName3 = $(this).val();
    }
  });
});