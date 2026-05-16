$(document).ready(function(){

  // Complaint dropdown
  $("#complaintDropdownBtn").click(function(e){
    e.preventDefault();
    $("#complaintDropdownMenu").slideToggle();
  });

  // Profile dropdown
  $("#profileBtn").click(function(e){
    e.stopPropagation();
    $("#profileDropdownMenu").toggle();
  });

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

  // Confirm logout
  $("#confirmLogout").click(function(){
    window.location.href = "login.jsp";
  });

  // Open add department modal
  $("#openModal").click(function(){
    $("#deptModal").css("display","flex");
  });

  // Close add department modal
  $("#closeModal").click(function(){
    $("#deptModal").hide();
  });

  // Add department
  $("#saveDept").click(function(){

    let name = $("#deptName").val().trim();

    if(name === ""){
      alert("Please enter department name!");
      return;
    }

    let newDept = `
      <div class="dept-card">
        <div class="dept-name"><i class="fa-solid fa-building"></i> ${name}</div>
        <button class="btn-delete"><i class="fa-solid fa-trash"></i></button>
      </div>
    `;

    $("#deptList").append(newDept);

    $("#deptName").val("");
    $("#deptModal").hide();
  });

  // Delete department
  $(document).on("click", ".btn-delete", function(){
    $(this).closest(".dept-card").remove();
  });

  // Search department
  $("#searchDept").on("keyup", function(){
    let value = $(this).val().toLowerCase();

    $("#deptList .dept-card").filter(function(){
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
    });
  });

});