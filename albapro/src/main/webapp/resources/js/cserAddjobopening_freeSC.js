
function hiddendiv() {
  var checkBox = document.getElementById("appperiod-tel");
  var checkBox2 = document.getElementById("appperiod-online");
  var checkBox3 = document.getElementById("appperiod-Visit");
  var showdiv = document.getElementById("appperiod-hidden-tel");
  var showdiv2 = document.getElementById("appperiod-hidden-online");
  if (checkBox.checked == true){
	  showdiv.style.display = "block";
  } else {
	  showdiv.style.display = "none";
  }
  
  if (checkBox2.checked == true){
	  showdiv2.style.display = "block";
  } else {
	  showdiv2.style.display = "none";
  }
  
  if (checkBox3.checked == true){
	  showdiv.style.display = "none";
	  showdiv2.style.display = "none";
  } 
  
}

console.log('arrJobCodeWide: ' + JSON.stringify(arrJobCodeWide));

var mycont = Object.keys(arrJobCodeWide.JOBCD).length;
var mycont2 = Object.keys(arrJobCodeMid.JOBCD).length;
var mymajorlen = Object.keys(amajorser.content).length;
console.log(mymajorlen);
console.log(mycont);
console.log(mycont2);


function jsonout(){
	var modal = $('.jobcho1');
	$('.jobcho1').text('');
	


	for(i=0; i < mycont; i++ ){
	
		$('<p></p>').attr('id','0'+[i+1]+'000000').addClass('jobcho-de').text(arrJobCodeWide.JOBCD[i].NM).appendTo(modal);
		
		
	}
	$('.jobcho-de').click(function(){
		var modal2= $('.jobcho2');
		$(modal2).text('');
	                          
	  var id = $(this).attr('id');
	
	   for(i=0; i < mycont2; i++ ){
			if(id == arrJobCodeMid.JOBCD[i].MCD){
				
				
			
					$('<p></p>').addClass('jobcho-de2').text(arrJobCodeMid.JOBCD[i].NM).appendTo(modal2);
				
			
				
			}
			
		}
	   

	});
	


		
	};
	
	

	
	
	
	$(document).on('click','.jobcho-de2',function(){
		var modal3= $('.jobcho3');
		var text = $(this).text();
		
		
		$('<p></p>').addClass('jobcho-de3').text(text).appendTo(modal3);
	});

	
	


