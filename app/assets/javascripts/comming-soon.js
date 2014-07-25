
function commingSoon() {
	var winH = $(window).height(),
			page = $('.comming-soon'),
			header = page.find('.comming-soon-header'),
			footer = page.find('.comming-soon-footer')
			content = page.find('.comming-soon-content'),
			contentH = content.outerHeight(),
			limitHeight = header.outerHeight() + content.outerHeight() + footer.outerHeight();

	if ( winH > limitHeight) {
		page.height(winH).removeClass('not-fit');
		content.css('top', winH/2 - contentH/2);
	} else {
		content.css('top', '0px');
		page.addClass('not-fit');
	}
};

$(document).ready(function() {
	commingSoon();

	$(window).resize(function(event) {
		commingSoon();
	});
});