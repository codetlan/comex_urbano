var ready;
var commingSoon;

commingSoon = function() {
	var winH = $(window).height(),
			page = $('.comming-soon'),
			header = page.find('.comming-soon-header'),
			footer = page.find('.comming-soon-footer')
			content = $('.comming-soon-content'),
			contentH = content.outerHeight(),
			limitHeight = header.outerHeight() + content.outerHeight() + footer.outerHeight();

	console.log(content.outerHeight());

	if ( winH > limitHeight) {
		page.height(winH).removeClass('not-fit');
		content.css('top', '50%');
		content.css({
			top: '50%',
			marginTop: contentH/2 * -1
		});
	} else {
		content.css({
			top: '0px',
			marginTop: '0px'
		});
		page.height('auto').addClass('not-fit');
	}
};

ready = function() {

	var imageLoaded = function() {
		commingSoon();
  }

  $('img').each(function() {
      var tmpImg = new Image() ;
      tmpImg.onload = imageLoaded;
      tmpImg.src = $(this).attr('src') ;
  });

	$(window).resize(function(event) {
		commingSoon();
	});

};

$(document).ready(ready);
$(document).on('page:load', ready);