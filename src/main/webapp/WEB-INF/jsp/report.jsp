<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Reports - Send Message</title>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">

  <!-- CSS File -->
  <link rel="stylesheet" href="./css/report.css">

  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>

<body>

  <!-- HEADER -->
  <jsp:include page="navbar.jsp" />

  <div class="container">

    <!-- SIDEBAR -->
    <jsp:include page="Sidebar.jsp" />

    <!-- MAIN CONTENT -->
    <div class="content">

      <h2>Reports - Send Message to User</h2>

      <!-- Send Message Form -->
      <div class="report-container">
        <h3><i class="fa-solid fa-envelope"></i> Send Message</h3>

        <form id="messageForm">

          <div class="form-group">
            <label>User Name / User ID</label>
            <input type="text" id="username" placeholder="Enter user name or user ID" required>
          </div>

          <div class="form-group">
            <label>Message Subject</label>
            <input type="text" id="subject" placeholder="Enter subject" required>
          </div>

          <div class="form-group">
            <label>Message</label>
            <textarea id="message" rows="5" placeholder="Write message here..." required></textarea>
          </div>

          <button type="submit" class="send-btn">
            <i class="fa-solid fa-paper-plane"></i> Send Message
          </button>

          <p class="success-msg" id="successMsg"></p>
        </form>
      </div>

      <!-- Message History -->
      <div class="message-history">
        <h3><i class="fa-solid fa-clock-rotate-left"></i> Sent Messages History</h3>

        <table>
          <thead>
            <tr>
              <th>User</th>
              <th>Subject</th>
              <th>Message</th>
              <th>Date</th>
              <th>Action</th>
            </tr>
          </thead>

          <tbody id="messageTable">
            <!-- Messages will be added dynamically -->
          </tbody>
        </table>
      </div>

    </div>
  </div>

  <!-- JS File -->
  <script src="./js/report.js"></script>

</body>
</html>