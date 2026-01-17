<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Contact Us - Roosewald Shipping</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
  <style>
    body {
      background: linear-gradient(to right, #e3f2fd, #f1f8e9);
      animation: fadeIn 1s ease;
    }
    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
    .contact-container {
      max-width: 700px;
      margin: auto;
      padding: 40px;
      background: white;
      border-radius: 20px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
      animation: fadeIn 1.2s ease-in-out;
    }
    .icon {
      font-size: 1.8rem;
      color: #0d6efd;
      margin-right: 15px;
    }
    h2 {
      font-weight: bold;
      margin-bottom: 30px;
    }
  </style>
</head>
<body class="p-5">

  <div class="container contact-container">
    <h2 class="text-center text-primary"><i class="fa-solid fa-phone-volume"></i> Contact Roosewald Shipping</h2>
    
    <div class="mb-4">
      <p><i class="fa-solid fa-location-dot icon"></i><strong>Head Office:</strong> 123 Shipping Lane, Toronto, ON, Canada M5G 2C3</p>
      <p><i class="fa-solid fa-phone icon"></i><strong>Phone:</strong> +1 (416) 555-1234</p>
      <p><i class="fa-solid fa-envelope icon"></i><strong>Email:</strong> contact@roosewaldshipping.com</p>
      <p><i class="fa-solid fa-clock icon"></i><strong>Working Hours:</strong> Mon–Sat: 9:00 AM – 6:00 PM</p>
    </div>

    <div class="text-center mt-4">
      <a href="index.jsp" class="btn btn-outline-primary"><i class="fa-solid fa-arrow-left"></i> Back to Home</a>
    </div>
  </div>

</body>
</html>
