//document.ready시작-- 탭 자바스크립트임
$(document).ready(function() {
  $("#tabUI>ul li").on('click',function() {
    idx = $(this).index();
    $('#tabUI>ul li').removeClass('on'); 
    $('#tabUI>ul li').eq(idx).addClass('on');
    $('#tabContents div').removeClass('on');
    $('#tabContents div').eq(idx).addClass('on');
  })
  $('#prev').on('click', function(){
    idx=$(".on").index();
    if(idx-1>= 0){
      $('#tabUI>ul li').removeClass('on'); 
      $('#tabUI>ul li').eq(idx-1).addClass('on');
      $('#tabContents div').removeClass('on');
      $('#tabContents div').eq(idx-1).addClass('on');
    }
  })
  $('#next').on('click', function(){
    idx=$(".on").index();
    end=$("#tabUI>ul li").length-1;
    if(idx+1<=end) {
      $('#tabUI>ul li').removeClass('on'); 
      $('#tabUI>ul li').eq(idx+1).addClass('on');
      $('#tabContents div').removeClass('on');
      $('#tabContents div').eq(idx+1).addClass('on');
    }
  })
});
// dcoument.ready끝
