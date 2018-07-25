$(document).ready(function() { 
	hilight_checked_item(), 
	render_form_items()
});

//投稿フォーム用javascript

function hilight_checked_item(){
  $(".form_item").on("click", (function(){
    $(this).siblings().removeClass("checked")
    $(this).addClass("checked")


    var form_type = $(this).closest(".form_items").attr("id").replace("_items","")
    if(form_type == "image"){
      var image_path = $(this).find(".image_item").attr("src")
      $("#image_btn_thumbnail").attr({
        "src": image_path
      });
  	}
  	else {
  	  var checked_phrase = $(this).text();
  	  $("#"+ form_type + "_btn").text(checked_phrase);
  	}
  }))
}
//クリックされた選択項目を目立たせるためのclassを追加するため
//クリックされた選択項目をフォーム上部に表示するため

function render_form_items(){
  $(".form_type_btn").on("click", (function(){
       var form_type = $(this).attr("id").replace("_btn","");
       $(".form_items").hide();
       $("#" + form_type +"_items").show();
  }))
}
//aタグをクリックすると、タグに応じた文章の選択項目を表示するため