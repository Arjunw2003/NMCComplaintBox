function registerUser() {

	var userData = {
		name: $("#FullName").val(),
		mobileNo: $("#mobileNo").val(),
		email: $("#email").val(),
		location: $("#location").val(),
		username: $("#username").val(),
		password: $("#password").val()
	};

	$.ajax({
		url: "/api/usersave/createAccount",
		type: "POST",
		contentType: "application/json",
		data: JSON.stringify(userData),

		success: function(response) {
			alert(response.message);
			window.location.href = "/";

			$("#registerForm")[0].reset();
		},

		error: function(xhr) {
			if (xhr.responseJSON) {
				alert(xhr.responseJSON.message);
			} else {
				alert("Something went wrong!");
			}
		}
	});
}

function loginUser() {
	alert("Arjun");

	var loginData = {
		username: $("#username").val().trim(),
		password: $("#password").val().trim()
	};

	$.ajax({
		url: "/api/usersave/loginUser",
		type: "POST",
		contentType: "application/json",
		data: JSON.stringify(loginData),

		success: function(response) {
			alert(response.message);
			window.location.href = "home";
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