
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
console.log(mycont);
console.log(mycont2);
for(i=0; mycont2; i++){
console.log(arrJobCodeMid.JOBCD[i].MCD)
}

function jsonout(){
	var modal = $('.jobcho1');
	$(modal).text('');
	


	for(i=0; i < mycont; i++ ){
	
		$('<p></p>').attr('id','0'+[i+1]+'000000').addClass('jobcho-de').text(arrJobCodeWide.JOBCD[i].NM).appendTo(modal);
		
		
	}
	
	$('.jobcho-de').click(function(){
		var modal2= $('.jobcho-detail2');
		$(modal2).text('');
	    
	                          
	  var id = $(this).attr('id');
	  alert(id);
	   for(i=0; i < mycont2; i++ ){
			if(id == arrJobCodeMid.JOBCD[i].MCD){
				
				
			
					$('<li></li>').text(arrJobCodeMid.JOBCD[i].NM).appendTo(modal2);
				
			
				
			}
			
		}
	   
	   id = 0;
	});

		
	};
	
	
	
	

	
	


