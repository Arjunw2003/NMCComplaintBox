$(document).ready(function(){

  $("#messageForm").submit(function(e){
    e.preventDefault();

    let user = $("#username").val();
    let subject = $("#subject").val();
    let message = $("#message").val();

    if(user === "" || subject === "" || message === ""){
      alert("Please fill all fields!");
      return;
    }

    let today = new Date();
    let formattedDate = today.getDate() + "-" +
                        (today.getMonth()+1) + "-" +
                        today.getFullYear();

    $("#messageTable").append(`
      <tr>
        <td>${user}</td>
        <td>${subject}</td>
        <td>${message}</td>
        <td>${formattedDate}</td>
        <td><button class="delete-btn">Delete</button></td>
      </tr>
    `);

    $("#successMsg").text("Message sent successfully to " + user + "!");

    $("#username").val("");
    $("#subject").val("");
    $("#message").val("");
  });

  // Delete message row
  $(document).on("click", ".delete-btn", function(){
    $(this).closest("tr").remove();
  });
  // Profile dropdown toggle
     $("#profileBtn").click(function(e){
         e.stopPropagation(); // important
         $("#profileDropdownMenu").toggle();
     });

     // Prevent dropdown menu click from closing
     $("#profileDropdownMenu").click(function(e){
         e.stopPropagation(); // important
     });

     // Close dropdown if clicked outside
     $(document).click(function(){
         $("#profileDropdownMenu").hide();
     });

     // Logout modal open
     $("#logoutBtn").click(function(e){
         e.preventDefault();
         $("#logoutModal").css("display","flex");
     });

     // Cancel logout
     $("#cancelLogout").click(function(){
         $("#logoutModal").fadeOut();
      });

});