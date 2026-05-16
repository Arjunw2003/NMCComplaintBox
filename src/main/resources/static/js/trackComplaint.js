function trackComplaint() {

    let complaintId = $("#complaintIdInput").val();

    if (complaintId === "") {
        alert("Enter Complaint ID ❗");
        return;
    }

    $.ajax({
        url: "/api/admin/getComplaint/" + complaintId,
        type: "GET",

        success: function(response) {

            if (response.status === "OK") {

                let data = response.data;

                // 🔥 STATUS SHOW
                $("#statusText").text(data.status);

                // 🎨 COLOR LOGIC
                if (data.status === "Pending") {
                    $("#statusText").css("color", "orange");
                } else if (data.status === "Processing") {
                    $("#statusText").css("color", "blue");
                } else if (data.status === "Completed") {
                    $("#statusText").css("color", "green");
                }

                // 🔥 IMAGE SHOW
                if (data.imagePath) {
                    $("#complaintImage").attr("src", data.imagePath);
                    $("#complaintImage").show();
                } else {
                    $("#complaintImage").hide();
                }

                // 🔥 SHOW DIV
                $("#trackResult").fadeIn();

            } else {
                alert("Complaint Not Found ❌");
                $("#trackResult").hide();
            }
        },

        error: function() {
            alert("Server Error ❌");
        }
    });
}