function submitComplaint() {

	var fullName = $("#fullName").val().trim();
	var mobileNo = $("#mobileNo").val().trim();
	var complaintDate = $("#complaintDate").val();
	var location = $("#location").val().trim();
	var description = $("#description").val().trim();
	var imageFile = $("#imageUpload")[0].files[0];

	// ✅ Validation
	if (fullName === "") {
		alert("Full Name required");
		return;
	}

	if (location === "") {
		alert("Location required");
		return;
	}

	if (description === "") {
		alert("Description required");
		return;
	}

	if (!imageFile) {
		alert("Please upload image");
		return;
	}

	// ✅ FormData
	var formData = new FormData();
	formData.append("fullName", fullName);
	formData.append("mobileNo", mobileNo);
	formData.append("complaintDate", complaintDate);
	formData.append("location", location);
	formData.append("description", description);
	formData.append("imagePath", imageFile);

	// ✅ AJAX Call
	$.ajax({
		url: "/api/electricity/electricityCompSave",
		type: "POST",
		data: formData,
		processData: false,
		contentType: false,

		success: function(response) {
			alert(response.message + "\nComplaint ID: " + response.data.complaintId);
			window.location.href = "/home";
		},

		error: function(xhr) {
			alert("Error submitting complaint");
			console.log(xhr);
		}
	});
}

$("#imageUpload").change(function() {
	var file = this.files[0];
	if (file) {

		var maxSize = 2 * 1024 * 1024;

		if (file.size > maxSize) {
			alert("Image size should be less than 2MB");
			$(this).val("");
			return;
		}

		var reader = new FileReader();

		reader.onload = function(e) {
			$("#previewImg").attr("src", e.target.result).show();
		};

		reader.readAsDataURL(file);
		alert("Image Uploaded Successfully");
	}
});