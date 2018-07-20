$(document).ready(function() { hilight_checked_item() });

function hilight_checked_item(){
  $(".phrase_item").on("click", (function(){
    $(this).siblings().removeClass("checked")
    $(this).addClass("checked")
  }))
}
//投稿フォームで、選択された項目を目立たせるためのclassを追加するため