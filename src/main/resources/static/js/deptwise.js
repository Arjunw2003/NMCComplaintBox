// 🔥 View Image
function viewImage(imagePath) {
	$("#modalImage").attr("src", imagePath);
	$("#imageModal").css("display", "flex");
}

// ❌ Close Modal
function closeModal() {
	$("#imageModal").hide();
}

let allComplaints = [];

// 🚀 Page Load
$(document).ready(function() {
	loadComplaints();
});

// 🔥 Load All Complaints
function loadComplaints() {

	$.ajax({
		url: "api/admin/getallComplaints",
		type: "GET",
		contentType: "application/json",

		success: function(response) {

			console.log(response);

			allComplaints = response.data;

			displayComplaints(allComplaints);
		},

		error: function(xhr) {
			console.error(xhr);
			alert("Error loading complaints!");
		}
	});
}

// 🔥 Department Filter
$("#deptFilter").on("change", function() {

	let selectedDept = $(this).val();

	if (selectedDept === "") {
		displayComplaints(allComplaints);
	} else {

		let filtered = allComplaints.filter(function(c) {
			return c.department === selectedDept;
		});

		displayComplaints(filtered);
	}
});

// 🔥 Display Function
function displayComplaints(data) {

	let table = "";

	if (data.length === 0) {
		table = `<tr><td colspan="7">No Complaints Found</td></tr>`;
	} else {

		$.each(data, function(index, c) {

			table += `
			<tr>
			    <td>${index + 1}</td>
			    <td>${c.complaintId}</td>
			    <td>${c.department}</td>
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
}