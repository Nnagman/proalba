var jobchoid = [];
var jobchotext = [];

var mycont = Object.keys(arrJobCodeWide.JOBCD).length;
var mycont2 = Object.keys(arrJobCodeMid.JOBCD).length;
var ss = jQuery.noConflict();

function jsonout() {
	var modal = $('.jobcho1');
	$('.jobcho1').text('');
	$('.jobcho2').text('');
	$('.jobchoice').text('');
	$('.jobcho3').text('');
	 jobchoid =[];

	 jobchotext =[];

	

	for (i = 0; i < mycont; i++) {

		$('<p></p>').attr('id', '0' + [ i + 1 ] + '000000').addClass(
				'jobcho-de').text(arrJobCodeWide.JOBCD[i].NM).appendTo(modal);

	}
	$('.jobcho-de').click(
			function() {
				var modal2 = $('.jobcho2');
				$(modal2).text('');

				var id = $(this).attr('id');

				for (i = 0; i < mycont2; i++) {
					if (id == arrJobCodeMid.JOBCD[i].MCD) {

						$('<p></p>').addClass('jobcho-de2').attr('id',
								arrJobCodeMid.JOBCD[i].CD).text(
								arrJobCodeMid.JOBCD[i].NM).appendTo(modal2);

					}

				}

			});

};



ss(function(){
	jQuery(document).on('click','.jobcho-de2',function() {


		
		var modal3 = $('.jobcho3');
		var text = $(this).text();
		var textid = $(this).attr('id');
		var textlen = $('.jobcho-de3').text();
		var divcnt = $('.jobcho-de3').length

		/*--------중복체크--------------*/
		
		
	
		
		if(jobchotext[0]==text || jobchotext[1]==text || jobchotext[2]==text || jobchotext[3]==text || jobchotext[4]==text){
		
			alert('중복'); 
		
		}else if (divcnt < 5) {

			$('<div></div>').addClass('jobcho-de3').text(text).attr('id',
					textid).appendTo(modal3);

			jobchoid.push($(this).attr('id'));
			jobchotext.push(text);

		}  else {
			alert("5개이상 선택 불가능 합니다.");
		}
		
		
		
	});

});


ss(function(){
jQuery(document).on('click','.btn-sejob',function() {

			var chodiv = $('.jobchoice');

			for (i = 0; i < jobchoid.length; i++) {
				$('<p></p>').addClass('sejobre').attr('id', jobchoid[i]).text(
						jobchotext[i]).appendTo(chodiv);
			}
			
			
		});
});

ss(function(){

jQuery(document).on('click', '.btn-remove', function() {
	$('.jobcho3').text('');
	 jobchoid =[];

	 jobchotext =[];

});
});
