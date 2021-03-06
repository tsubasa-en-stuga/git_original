$(document).on('turbolinks:load', function() {
  hilight_checked_item(),
  render_form_items()
})
//投稿フォーム用javascript

function hilight_checked_item(){
  $(".form_item").on("click", (function(){
    $(this).siblings().removeClass("checked")
    $(this).addClass("checked")

    var form_type = $(this).closest(".form_items").attr("id").replace("_items","")
    if(form_type == "image"){
      var image_path = $(this).css("background-image")
      $("#image_btn").css({
        "background-image": image_path
      });
      $("#image_btn h3").text("");
  	}
  	else {
  	  var checked_phrase = $(this).text();
  	  $("#"+ form_type + "_btn").text(checked_phrase);
      $("#"+ form_type + "_btn").css('color', 'black');
  	}
  }))
}
//クリックされた選択項目を目立たせるためのclassを追加するため
//クリックされた選択項目をフォーム上部に表示するため

function render_form_items(){
  $(".form_type_btn").on("click", (function(){
      var form_type = $(this).attr("id").replace("_btn","");
      $(".form_items").hide();
      $("#" + form_type +"_items").css('display', 'flex');
  }))
}
//aタグをクリックすると、タグに応じた文章の選択項目を表示するため