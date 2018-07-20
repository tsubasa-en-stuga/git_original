$(document).ready(function() { 
	hilight_checked_item(), 
	render_phrase_items()
});

//投稿フォーム用javascript

function hilight_checked_item(){
  $(".phrase_item").on("click", (function(){
    $(this).siblings().removeClass("checked")
    $(this).addClass("checked")

    var checked_phrase = $(this).text()
    var phrase_items_box = $(this).closest(".phrase_items")
    var phrase_type = phrase_items_box.attr("id")
    $(".phrase_type_btn#"+phrase_type).text(checked_phrase)
  }))
}
//クリックされた選択項目を目立たせるためのclassを追加するため
//クリックされた選択項目をフォーム上部に表示するため

function render_phrase_items(){
  $(".phrase_type_btn").on("click", (function(){
       var phrase_type = $(this).attr("id")
       $(".phrase_items").hide()
       $(this).siblings("#" + phrase_type).show()
  }))
}
//aタグをクリックすると、タグに応じた文章の選択項目を表示するため