;$('.dropdown-link').mouseover(function(){
  var id = $(this).data('target');
  $('#' + id).removeClass('not-visible');
  $(this).addClass('active');
});

$('.dropdown-link').click(function(){
  var id = $(this).data('target');
  $('#' + id).toggleClass('not-visible');
  $(this).addClass('active');
});

$('#dropdown-full').mouseleave(function() {
  $('#dropdown-navbar').addClass('not-visible');
  $('.dropdown-link').removeClass('active');
});
