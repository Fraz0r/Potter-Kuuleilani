(function($){
	$(function(){
		$('button, input[type=submit], input[type=button]')
			.mousedown(function(){ $(this).addClass('mousedown'); })
			.mouseup(function(){ $(this).removeClass('mousedown'); })

		 $('a.delete').each(function(){
			link = $(this);
			link.click(function(){ 
				if(confirm('Are you sure?')) {
					form = $('<form></form>');
					form.attr({
						method: 'post',
						action: this.href
					}).html('<input type="hidden" name="_method" value="delete" />');

					if(link.hasClass('remote')) {
						$.post(form.attr('action') + '.xhr', form.serializeArray());
					} else {
						$('body').append(form);
						form.submit();
					}
				}

				return false;
			});
		});
	});
})(jQuery);