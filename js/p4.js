/**************************************************
Peter Lustiber
CSCI E-15 Dynamic Web Applications
Project 4
December 22, 2013 
**************************************************/

// Specify the rules for validation using the jQuery plugin Validate
// Since the names of the fields used in the forms are consistent across views,
// the same validation rules can be re-used by identifying its class to editProfile
// These views include include signup, login and editProfile.  This approach has the
// benefit of ensuring validation consistency across views
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
			minlength: '5',
			maxlength: '10'
		},
		site: {
			url: true
		},
		location: {
			maxlength: '25'
		}
	},
	messages: {
		password: {
			minlength: 'Password must be 5-10 characters',
			maxlength: 'Password must be 5-10 characters'
		}
	}
});
