$(document).ready(function(){

    // Complaint dropdown toggle
    $("#complaintDropdownBtn").click(function(e){
        e.preventDefault();
        $("#complaintDropdownMenu").slideToggle();
    });

    // Sidebar tab click
    $(".tab-link").click(function(e){
        e.preventDefault();

        $(".tab-link").removeClass("active");
        $(this).addClass("active");

        let tabId = $(this).data("tab");

        $(".tab-page").removeClass("active-page");
        $("#" + tabId).addClass("active-page");

        $("#profileDropdownMenu").hide();
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

    // Confirm logout
    $("#confirmLogout").click(function(){
        window.location.href = "login.html"; 
    });

});