var jobchoid = [];
var jobchotext = [];
var textarr =[];
var pljobchoid = [];
var pljobchotext = [];

var mycont = Object.keys(arrJobCodeWide.JOBCD).length;
var mycont2 = Object.keys(arrJobCodeMid.JOBCD).length;
var plmycont = Object.keys(arrAreaWide.AREACD).length;
var plmycont2 = Object.keys(arrAreaMid.AREACD).length;
var plmycont3 = Object.keys(arrAreaMid.AREACD).length;
var ss = jQuery.noConflict();






 /*지역선택 검색*/
function placho(){
	var  plmodal = $('.placho1');
	
	 $('.placho1').text('');
	$('.placho2').text('');
	$('.plachoice').val(' ');
	$('.placho3').text('');
	
	pljobchoid = [];
	 pljobchotext = [];
	 textarr=[];
	
	for (i = 0; i < plmycont; i++) {

		$('<p></p>').attr('id', arrAreaWide.AREACD[i].CD).addClass('placho-de').text(arrAreaWide.AREACD[i].NM).appendTo(plmodal);

	}
	 $('.placho-de').click(function(){
		 var plmodal2 = $('.placho2');
	
	
		 var text = $(this).text();
		
		plmodal2.text('');
			
			var id = $(this).attr('id');
			
			for (i = 0; i < plmycont2; i++){
				if(id == arrAreaMid.AREACD[i].MCD){
					$('<p></p>').addClass('placho-de2').attr('id',
							arrAreaMid.AREACD[i].MCD).text(
							arrAreaMid.AREACD[i].NM).appendTo(plmodal2);
				}
				
			}
			
			
	 });
	 
	 
	 
	 $('.placho-de2').click(function(){
		 var plmodal3 = $('.placho3');
	
	
		 var text = $(this).text();
		
		plmodal3.text('');
			
			var id = $(this).attr('id');
			
			for (i = 0; i < plmycont2; i++){
				if(id == arrAreaMid.AREACD[i].MCD){
					$('<p></p>').addClass('placho-de2').attr('id',
							arrAreaMid.AREACD[i].MCD).text(
							arrAreaMid.AREACD[i].NM).appendTo(plmodal2);
				}
				
			}
			
			
	 });
	 
	 
	
	
};


ss(function(){ 
	jQuery(document).on('click','.placho-de2',function() {


		
		 var plmodal3 = $('.placho3');
		var text = $(this).text();
		var textid = $(this).attr('id');
		var textlen = $('.placho-de3').text();
		var divcnt = $('.placho-de3').length

		/*--------중복체크--------------*/
		
		
	
/*		
	if(pljobchotext[0]==text || pljobchotext[1]==text || pljobchotext[2]==text){

			alert('중복'); 
		--------중복체크--------------
	
			
	}else*/

 
		if (divcnt < 1) {

			$('<p></p>').addClass('placho-de3').text(text).attr('id',
					textid).appendTo(plmodal3);

			pljobchoid.push($(this).attr('id'));
			pljobchotext.push(text);

		}  else {
			alert("1개이상 선택 불가능 합니다.");
		}

		
	});

});

ss(function(){
	jQuery(document).on('click','.btn-plsejob',function() {
	
		
		$('.placho-de3').each(function(){
			var text =$(this).text();
		 
			textarr.push(text);
			
		
			
			
	
		
			 
			$('#plachoice').val(textarr[0]).trigger('change');
			
		});
		
		
		 
				
			
	});

});



/*지역선택 검색*/

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
		
		
	
		
	/*	if(jobchotext[0]==text || jobchotext[1]==text || jobchotext[2]==text || jobchotext[3]==text || jobchotext[4]==text){
		
			alert('중복'); */
		/*--------중복체크--------------*/
		
		if (divcnt < 1) {

			$('<div></div>').addClass('jobcho-de3').text(text).attr('id',
					textid).appendTo(modal3);

			jobchoid.push($(this).attr('id'));
			jobchotext.push(text);

		}  else {
			alert("1개이상 선택 불가능 합니다.");
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








