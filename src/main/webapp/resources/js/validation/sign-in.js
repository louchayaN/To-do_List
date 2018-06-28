$(document).ready( function () {
	$( "#signInForm" ).validate( {
		rules: {
			login: "required",
			password: "required",
		},		
	} );	
} );
