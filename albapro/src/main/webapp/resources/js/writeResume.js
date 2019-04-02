 	$(document).ready(function(){
		$("#photo_add").on("change", loadFile);
 	});
	function loadFile(event){
 		if(event.files && event.files[0]){
			var reader = new FileReader();
 			reader.onload = function(e) {
 				$('#ps_photo').attr('src', e.target.result);
 			}
 			reader.readAsDataURL(event.files[0]);
 		}
 	}


  $(function() {
        $('#dev_sr_title').keyup(function (e){
            var content = $(this).val();
            // $(this).height((content.split('\n').length + 1) + 'em');
            $('#dev_sr_title_cnt').html(content.length + ' / 25');
        });
        $('#dev_sr_title').keyup();
  });
