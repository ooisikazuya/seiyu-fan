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


document.addEventListener("turbolinks:load", function() {
  let actorName1 = $("#favorite_voice_actor_id_1").val();
  let actorName2 = $("#favorite_voice_actor_id_2").val();
  let actorName3 = $("#favorite_voice_actor_id_3").val();
  if (actorName1) {
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
  $(document).on('change', 'select', function() {
    if ($(this).attr('id') == 'favorite_voice_actor_id_1') {
      if ($(this).val()) {
        $('#favorite_voice_actor_id_2 option[value=' + $(this).val() + ']').hide();
        $('#favorite_voice_actor_id_3 option[value=' + $(this).val() + ']').hide();
      }
      if (actorName1) {
        $('#favorite_voice_actor_id_2 option[value=' + actorName1 + ']').show();
        $('#favorite_voice_actor_id_3 option[value=' + actorName1 + ']').show();
      }
      actorName1 = $(this).val();
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