//JSローダー
importJs([
	"common/js/module/jquery.console.js",
	"common/js/module/jquery.add-icon.js",
	"common/js/module/jquery.rollover.js",
	"common/js/module/jquery.smooth-scroll.js",
]);

$(function () {
	moduleFunc.addIcon();
	moduleFunc.rollover();
	moduleFunc.smoothScroll();
});
