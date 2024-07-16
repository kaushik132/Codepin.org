// Loading page
$( document ).ready(function() {
    setTimeout(function () {
    $('.loading-page').addClass('stay_loading'); }, 4000);
});

// Loading hide
$( document ).ready(function() {
setTimeout(function () {
$('.loading-page').addClass('hide_loading'); }, 6000);
});


// Menu
$('#slidemenu').on('show.bs.collapse','.collapse', function() {
  $('#slidemenu').find('.sub-menu.show').collapse('hide');
});

$('#hummenu').click(function(){
  $('#slidemenu').addClass('menu-open');
  $('.slidemenu-overlay').addClass('open');
});

$('#closemenu').click(function(){
  $('#slidemenu').removeClass('menu-open');
  $('.slidemenu-overlay').removeClass('open');
});
$('.slidemenu-overlay').click(function(){
  $('#slidemenu').removeClass('menu-open');
  $(this).removeClass('open');
});



// Arrow
$(document).ready(function(){
    $(".home_arrow").hide();
    setTimeout(function () {
        $(".home_arrow").show();
        $(".home_arrow").addClass("show_arrow");
    }, 16000);
});

// Sticky header
$(window).scroll(function() {
if ($(this).scrollTop() > 100){  
    $('.sticky').addClass("stickyHeader");
}
else{
    $('.sticky').removeClass("stickyHeader");
}
});



// Counter js
$(document).ready(function() {

    var counters = $(".counter");
    var countersQuantity = counters.length;
    var counter = [];
  
    for (i = 0; i < countersQuantity; i++) {
      counter[i] = parseInt(counters[i].innerHTML);
    }
  
    var count = function(start, value, id) {
      var localStart = start;
      setInterval(function() {
        if (localStart < value) {
          localStart++;
          counters[id].innerHTML = localStart;
        }
      }, 40);
    }
  
    for (j = 0; j < countersQuantity; j++) {
      count(0, counter[j], j);
    }
  });