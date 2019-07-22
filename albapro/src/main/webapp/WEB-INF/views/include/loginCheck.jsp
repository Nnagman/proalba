<script type="text/javascript">
	var url = window.location.herf;
	var id = url.substring( url.indexOf('=') + 1, url.length);
	console.log(id);
		
	if(id == ""){
		window.location.href = "http://localhost:8080";
	}
</script>