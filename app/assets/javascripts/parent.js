$(function parent_btn_show_delay(){
  var delayTime = 4000;

  $("#header_user").on({
    'mouseenter': function() {
      setTimeout(function(){
        $("#parent_btn").css('display', 'block');
      }, delayTime);
    },
    'mouseleave': function() {
      $("#parent_btn").hide();
    }
  })
});
