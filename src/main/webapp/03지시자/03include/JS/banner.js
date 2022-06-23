$(document).ready(function () {
  const swiper = new Swiper('.swiper', {
  // Optional parameters
  direction: 'horizontal',
  loop: true,

  // If we need pagination
  pagination: {
    el: '.swiper-pagination',
    clickable : 'true'
  },

  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },

  // And if we need scrollbar
  scrollbar: {
    el: '.swiper-scrollbar',
  },
  //마우스 휠 사용
  mousewheel:false,

  //페이지 전환 효과
  effect:'fade',
  speed:1000,

  //자동스크롤링
  autoplay : {
    delay:2000, //2초마다 다음페이지로 넘긴다.
    disableOnInteraction: false 
    //true가 기본값이고 true일 때 불릿으로 페이지를 자동스크롤이 멈춘다. 이 때 clickable(불릿 클릭 가능)이 설정되어 있어야 한다.
  }
  }); //스와이퍼 끝
}) //레디끝
