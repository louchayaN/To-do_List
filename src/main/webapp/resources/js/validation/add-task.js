$(document).ready( function () {
	$( "#addTaskForm" ).validate( {
		rules: {
			shortName: "required",
		},		
	} );	
} );
