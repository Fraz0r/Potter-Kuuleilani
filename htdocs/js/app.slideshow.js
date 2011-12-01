(function($){
	const SLIDE_CYCLE = 3000;
	const SLIDE_FADE_TIME = 500;
	const STOP_ON_CLICK  = true;

	var slideshow = null;
	var panel     = null;
	var cur_slide  = 0;
	var slides     = null;
	var scrollInterval = null;

	var click = function(dir){
		if(STOP_ON_CLICK)
			clearInterval(scrollInterval);
		
		slide(dir);
	};

	var initSlideshow = function(){
		slides = $('img', slideshow);

		slide(0);
		startCycle();
	};

	var restartCycle = function() {
		clearInterval(scrollInterval);
		startCycle();
	};

	var slide = function(dir){
		cur_slide += dir;

		if(cur_slide >= slides.length)
			cur_slide = 0;
		else if(cur_slide < 0)
			cur_slide = slides.length - 1

		var x = 0;
		slides.each(function(){
			if(x++ == cur_slide)
				$(this).fadeIn(SLIDE_FADE_TIME);
			else
				$(this).fadeOut(SLIDE_FADE_TIME);
		});
	};
	
	var startCycle = function(){
		scrollInterval = setInterval(function(){ slide(1); }, SLIDE_CYCLE);
	};
	
	$(function(){
		slideshow = $('#slider');
		panel     = slideshow.find('#slider-display');

		if(slideshow.length)
			initSlideshow();
	});
})(jQuery);