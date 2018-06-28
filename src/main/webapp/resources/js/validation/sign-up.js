$(document).ready( function () {
	$( "#signUpForm" ).validate( {
		rules: {
			login: {
				required: true,
				maxlength: 20
			},
			password: {
				required: true,
				minlength: 6,
				maxlength: 20
			},
			email: {
				required: true,
				email: true
			},
		},		
	} );
} );
