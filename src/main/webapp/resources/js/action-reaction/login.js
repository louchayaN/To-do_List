$(document).ready(function(){
	var currentURL = new URI();
	
	if(currentURL.hasQuery("message", "signInfailed")){
		$("#sigInError").append("Email or password are incorrect!"); 			
	}	
});

