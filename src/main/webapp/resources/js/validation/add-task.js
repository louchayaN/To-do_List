$(document).ready( function () {
	$( "#addTaskForm" ).validate( {
		rules: {
			login: "required",
			password: "required",
		},		
	} );	
} );
