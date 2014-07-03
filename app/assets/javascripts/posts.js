
function videoResponsiveHeight() {
	var container = $('.post-show-video'),
			containerHeight = container.outerHeight(),
			video = $('.yvid');

	video.height(containerHeight);
};

$(document).ready(function () {
	videoResponsiveHeight();
});