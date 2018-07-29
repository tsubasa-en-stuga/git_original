function menuShowDelay (delayTime) { 
  var nowActive = -1;
  var hoverClass = 'hover';
  var hoverTime = delayTime;
  $('ul.hide_btn > li').on({
    'mouseenter': function(){
      targetOn = $(this);
      if(nowActive === -1){
        sethover = setTimeout(function(){
          targetOn.addClass(hoverClass);
          nowActive = manuElement.index(targetOn);
        }, hoverTime);
      } else {
        if(targetOn.hasClass(hoverClass)){
          clearTimeout(setleave);
        } else {
          setnexthover = setTimeout( function(){
            manuElement.removeClass(hoverClass);
            targetOn.addClass(hoverClass);
            nowActive = manuElement.index(targetOn);
          }, hoverTime);
        }
      }
    },
    'mouseleave': function(){
      targetOff = $(this);
      clearTimeout(sethover);
      function mouseIsOverWorkaround(what){
        var temp = $(what).parent().find(":hover");
        return temp.length == 1 && temp[0] == what;
      }
      var parent= targetOff;
      if(mouseIsOverWorkaround(parent[0])){
        if(targetOff.hasClass(hoverClass)){
          clearTimeout(setnexthover);
        }
      } else {
        setleave = setTimeout(function(){
          targetOff.removeClass(hoverClass);
          nowActive = -1;
        }, 250);
      }
    }
  });
}
$(function(){
  menuShowDelay(4000);
});