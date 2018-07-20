$(document).ready(function() { 
	hilight_checked_item(), 
	render_phrase_items()
});

//投稿フォーム用javascript
function hilight_checked_item(){
  $(".phrase_item").on("click", (function(){
    $(this).siblings().removeClass("checked")
    $(this).addClass("checked")
  }))
}
//クリックされた選択項目を目立たせるためのclassを追加するため

function render_phrase_items(){
  $(".phrase_type_btn").on("click", (function(){
       var phrase_type = $(this).attr("id")
       $(".phrase_items").hide()
       $(this).siblings("#" + phrase_type).show()
  }))
}
//aタグをクリックすると、タグに応じた文章の選択項目を表示するため