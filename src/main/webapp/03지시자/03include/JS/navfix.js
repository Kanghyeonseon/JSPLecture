$(document).ready(function() {
  $(window).on('scroll',function() {
    scroll_top=$(this).scrollTop();
    console.log(scroll_top);
    if(scroll_top>=50) {
      $('nav').css('position','fixed')
      .css('left','0px')
      .css('top','0px')
      .css('z-index','2')
      $('#main-container')
      .css('margin-top','105px')
    } else {
      $('nav').css('position','static')
      $('#main-container')
      .css('margin-top','0px')
    }
  })
})
