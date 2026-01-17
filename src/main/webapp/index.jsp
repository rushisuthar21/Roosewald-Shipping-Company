<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Roosewald Shipping</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
  <style>
    body {
      background: linear-gradient(to right, #f8f9fa, #e0f7fa);
      animation: fadeIn 1s ease-in;
    }
    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(30px); }
      to { opacity: 1; transform: translateY(0); }
    }
    .dashboard-card {
      border-radius: 20px;
      transition: transform 0.3s ease;
    }
    .dashboard-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 6px 20px rgba(0,0,0,0.1);
    }
    .icon {
      font-size: 2.5rem;
    }
    .carousel-item img {
      height: 520px;
    }
  </style>
</head>
<body class="p-5">

  <div class="container text-center">
    <h1 class="mb-1 display-5 fw-bold text-primary"><i class="fa-solid fa-boxes-packing"></i> Roosewald Shipping</h1>
    <h3 class="text-secondary mb-4">#1 in Toronto</h3>

    <!-- Image Carousel Start -->
    <div id="shippingCarousel" class="carousel slide mb-5" data-bs-ride="carousel" data-bs-interval="2500">
      <div class="carousel-inner rounded-4 shadow-sm">
        <div class="carousel-item active">
          <img src="images/1.jpeg" class="d-block w-100" alt="Cargo Ship">
          <div class="carousel-caption d-none d-md-block">
            <h5>Reliable Cargo Shipping</h5>
            <p>Fast and secure transport for all your shipping needs.</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="images/5.jpg" class="d-block w-100" alt="Air Shipping">
          <div class="carousel-caption d-none d-md-block">
            <h5>Efficient Aero Shipping</h5>
            <p>We ensure smooth an fast delievery at our top-notch Aero Partners.</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="images/3.jpg" class="d-block w-100" alt="Truck Delivery">
          <div class="carousel-caption d-none d-md-block">
            <h5>Nationwide Delivery via Trucks</h5>
            <p>Fast delivery to your doorstep across the country through Trucks.</p>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#shippingCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#shippingCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    <!-- Image Carousel End -->

    <div class="row justify-content-center">
      <!-- View Clients -->
      <div class="col-md-4 mb-4">
        <div class="card dashboard-card p-4 bg-light shadow-sm">
          <div class="card-body">
            <i class="fa-solid fa-users icon text-primary mb-3"></i>
            <h5 class="card-title">View Clients</h5>
            <p class="card-text">Browse all existing shipping client records.</p>
            <a href="ClientServlet" class="btn btn-outline-primary">Go</a>
          </div>
        </div>
      </div>

      <!-- Add Client -->
      <div class="col-md-4 mb-4">
        <div class="card dashboard-card p-4 bg-light shadow-sm">
          <div class="card-body">
            <i class="fa-solid fa-user-plus icon text-success mb-3"></i>
            <h5 class="card-title">Add New Client</h5>
            <p class="card-text">Insert a new client with their shipping details.</p>
            <a href="add-client.jsp" class="btn btn-outline-success">Add</a>
          </div>
        </div>
      </div>

      <!-- Contact Us -->
      <div class="col-md-4 mb-4">
        <div class="card dashboard-card p-4 bg-light shadow-sm">
          <div class="card-body">
            <i class="fa-solid fa-envelope-open-text icon text-warning mb-3"></i>
            <h5 class="card-title">Contact Us</h5>
            <p class="card-text">Questions or feedback? Reach out here.</p>
            <a href="contact.jsp" class="btn btn-outline-warning">Contact</a>
          </div>
        </div>
      </div>
    </div>

    <footer class="mt-5 text-muted small">
      <p>&copy; 2025 Roosewald Shipping | Built using JSP & Bootstrap</p>
    </footer>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
