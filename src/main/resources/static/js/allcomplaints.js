$("#searchInput").on("keyup", function() {
	let value = $(this).val().toLowerCase();

	$("#complaintTable tr").filter(function() {
		$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
	});
});

// 🔥 View Image
function viewImage(imagePath) {
	$("#modalImage").attr("src", imagePath);
	$("#imageModal").css("display", "flex");
}

// ❌ Close Modal
function closeModal() {
	$("#imageModal").hide();
}


$(document).ready(function() {
	loadComplaints();
});

// 🔥 Load All Complaints
function loadComplaints() {

	$.ajax({
		url: "api/admin/getallComplaints", // 🔁 तुझा API URL
		type: "GET",
		contentType: "application/json",

		success: function(response) {

			console.log(response);

			let data = response.data; // ApiResponse मधला data

			let table = "";

			if (data.length === 0) {
				table = `<tr><td colspan="6">No Complaints Found</td></tr>`;
			} else {

				$.each(data, function(index, c) {

					table += `
					<tr>
					    <td>${index + 1}</td>
						<td>${c.complaintId}</td>
					    <td>${c.fullName}</td>
					    <td>${c.mobileNo}</td>
					    <td>${c.location}</td>
					    <td>${c.description}</td>
					    <td>
					        <button onclick="viewImage('${c.imagePath}')" 
					            style="padding:5px 10px; background:#3498db; color:#fff; border:none; border-radius:5px; cursor:pointer;">
					            View
					        </button>
					    </td>
					</tr>
					`;
				});
			}

			$("#complaintTable").html(table);
		},

		error: function(xhr) {
			console.error(xhr);
			alert("Error loading complaints!");
		}
	});
}
