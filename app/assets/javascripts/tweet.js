$(document).ready(function() { 
	hilight_checked_item(), 
	render_form_items()
});

//投稿フォーム用javascript

function hilight_checked_item(){
  $(".form_item").on("click", (function(){
    $(this).siblings().removeClass("checked")
    $(this).addClass("checked")

    var checked_phrase = $(this).text()
    var form_type = $(this).closest(".form_items").attr("id")
    $(".form_type_btn#"+form_type).text(checked_phrase)
  }))
}
//クリックされた選択項目を目立たせるためのclassを追加するため
//クリックされた選択項目をフォーム上部に表示するため

function render_form_items(){
  $(".form_type_btn").on("click", (function(){
       var form_type = $(this).attr("id")
       $(".form_items").hide()
       $(this).siblings("#" + form_type).show()
  }))
}
//aタグをクリックすると、タグに応じた文章の選択項目を表示するため