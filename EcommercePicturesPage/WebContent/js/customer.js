$(document).ready(function() {
	$("#CustomerForm").validate({
		rules: {
			email: {
				required: true,
				email: true
			},
			fullName: "required",
			password: "required",
			phone: "required",
			address: "required",
			city: "required",
			country: "required",
			password: "required",
			confirmPassword: {
				required: true,
				equalTo: "#password"
			},
		},

		messages: {
			email: {
				required: "This field is required.",
				email: "Please enter correct email form with '@' character"
			},
			fullName: "This field is required.",
			password: "This field is required.",
			phone: "This field is required.",
			address: "This field is required.",
			city: "This field is required.",
			country: "This field is required.",
			password: "This field is required.",
			confirmPassword: {
				required: "This field is required.",
				equalTo: "Confirm password does not match password!"
			},
		}
	});
});