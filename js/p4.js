/**************************************************
Peter Lustiber
CSCI E-15 Dynamic Web Applications
Project 4
December 22, 2013 
**************************************************/

$(".profileForm").validate({
	rules: {
		first_name: {
			required: true,
			minlength: '2'
		},
		last_name: {
			required: true,
			minlength: '2'
		},
		email: {
			required: true,
			email: true
		},
		password: {
			required: true,
			minlength: '5'
		},
		location: {
			maxlength: '25'
		}
	}
});
