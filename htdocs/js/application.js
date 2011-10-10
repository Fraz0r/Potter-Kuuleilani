(function($){
	$(function(){
		$('.validate').validate();

		$('button, input[type=submit], input[type=button]')
			.mousedown(function(){ $(this).addClass('mousedown'); })
			.mouseup(function(){ $(this).removeClass('mousedown'); })
	});
})(jQuery);