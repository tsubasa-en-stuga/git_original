$(function() {
    $('#mypage_btn').mouseover(function(){
      $(this).attr('href', '/parents/:id');
     },);
});

// $(function() {
//     $('#mypage_btn').hover(function() {
//       var t = setTimeout(function(){
//         debugger
//         $(this).attr('href', '/parents/:id');
//         },1000);
//         $(function(){(this).data('timeout', t)
//     }, function(){
//         clearTimeout($(this).tata('timeout'));
//     });
// });

// $(function() {
//     $('span').mouseover(function(){
//         $('p').show(2000, "linear");
//     },);
// });