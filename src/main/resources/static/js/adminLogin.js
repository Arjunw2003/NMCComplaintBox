function adminLogin() {

	var loginData = {
		username: $("#username").val(),
		password: $("#password").val()
	};

	$.ajax({
		url: "/api/admin/loginAdmin",
		type: "POST",
		contentType: "application/json",
		data: JSON.stringify(loginData),

		success: function(response) {
			alert(response.message);
			window.location.href = "adminDashbord";
		},

		error: function(xhr) {
			if (xhr.responseJSON) {
				alert(xhr.responseJSON.message);
			} else {
				alert("Login failed!");
			}
		}
	});
}