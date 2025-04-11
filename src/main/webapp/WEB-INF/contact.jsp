<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Drive School - Contact Us</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <style>
    :root {
      --primary-color: #007bff;
      --light-color: #f8f9fa;
    }

    body {
      background-color: #f8f9fa;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .navbar {
      background-color: white;
      box-shadow: 0 2px 10px rgba(0,0,0,0.1);
      padding: 0.75rem 0;
      margin-bottom: 2rem;
    }

    .navbar-brand {
      font-weight: 600;
      color: var(--primary-color) !important;
      font-size: 1.25rem;
    }

    .nav-link {
      color: var(--dark-color) !important;
      font-weight: 500;
      padding: 0.5rem 1rem !important;
      transition: all 0.3s ease;
      font-size: 1rem;
    }

    .hero-section {
      background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://images.unsplash.com/photo-1592740370664-2bff88666800?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80');
      background-size: cover;
      background-position: center;
      color: white;
      padding: 8rem 0;
      text-align: center;
    }

    .hero-section h1 {
      font-size: 3rem;
      font-weight: 700;
      margin-bottom: 1.25rem;
      text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
    }

    .hero-section p {
      font-size: 1.25rem;
      margin-bottom: 1.5rem;
      text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
    }

    .contact-container {
      padding: 4rem 0;
    }

    .contact-info {
      background: white;
      border-radius: 15px;
      padding: 2rem;
      margin-bottom: 2rem;
      box-shadow: 0 8px 20px rgba(0,0,0,0.1);
      border: 1px solid var(--light-color);
    }

    .contact-info h3 {
      color: var(--primary-color);
      margin-bottom: 1.5rem;
      font-size: 1.75rem;
    }

    .contact-item {
      margin-bottom: 1.5rem;
      padding: 1rem;
      background: var(--light-color);
      border-radius: 10px;
    }

    .contact-icon {
      font-size: 1.75rem;
      color: var(--primary-color);
      margin-right: 1rem;
    }

    .contact-form {
      background: white;
      border-radius: 15px;
      padding: 2rem;
      box-shadow: 0 8px 20px rgba(0,0,0,0.1);
      border: 1px solid var(--light-color);
    }

    .form-control {
      border-radius: 10px;
      border: 1px solid #ddd;
      padding: 0.75rem;
      margin-bottom: 1rem;
      font-size: 1rem;
    }

    .submit-btn {
      background-color: var(--primary-color);
      padding: 0.75rem 2rem;
      border-radius: 25px;
      font-weight: 600;
      font-size: 1rem;
      transition: all 0.3s ease;
      border: none;
    }

    .submit-btn:hover {
      transform: translateY(-5px);
      box-shadow: 0 10px 20px rgba(0,123,255,.3);
    }

    .map-container {
      height: 450px;
      border-radius: 15px;
      overflow: hidden;
      margin-top: 2rem;
      box-shadow: 0 8px 20px rgba(0,0,0,0.1);
      border: 1px solid var(--light-color);
      position: relative;
      width: 100%;
    }

    .map-container iframe {
      width: 100%;
      height: 100%;
      border: none;
    }

    .map-marker {
      position: absolute;
      bottom: 15px;
      left: 50%;
      transform: translateX(-50%);
      background: white;
      padding: 0.75rem 1.5rem;
      border-radius: 20px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.1);
      font-size: 1rem;
      z-index: 10;
      backdrop-filter: blur(10px);
    }

    .map-marker i {
      color: var(--primary-color);
      margin-right: 0.75rem;
      font-size: 1.2rem;
    }

    @media (max-width: 768px) {
      .hero-section h1 {
        font-size: 2.5rem;
      }

      .hero-section p {
        font-size: 1.1rem;
      }

      .contact-container {
        padding: 3rem 0;
      }

      .contact-info {
        padding: 1.5rem;
      }

      .contact-form {
        padding: 1.5rem;
      }

      .map-container {
        height: 350px;
      }

      .map-marker {
        padding: 0.5rem 1rem;
        font-size: 0.9rem;
      }

      .map-marker i {
        font-size: 1rem;
      }
    }
  </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container">
    <a class="navbar-brand" href="index.jsp">Drive School</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="booking.jsp">Booking</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="contact.jsp">Contact Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="signin.jsp">Sign In</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<section class="hero-section">
  <div class="container">
    <h1>Contact Us</h1>
    <p>Get in touch with us for any inquiries or questions about driving lessons</p>
  </div>
</section>

<section class="contact-container">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <div class="contact-info">
          <h3>How to Contact Us</h3>
          <div class="contact-item">
            <i class="fas fa-phone contact-icon"></i>
            <div>
              <h4>Phone</h4>
              <p>+94 77 123 4567</p>
              <p>+94 71 987 6543</p>
            </div>
          </div>
          <div class="contact-item">
            <i class="fas fa-envelope contact-icon"></i>
            <div>
              <h4>Email</h4>
              <p>info@driveschool.lk</p>
              <p>support@driveschool.lk</p>
            </div>
          </div>
          <div class="contact-item">
            <i class="fas fa-map-marker-alt contact-icon"></i>
            <div>
              <h4>Address</h4>
              <p>123 Driving Street</p>
              <p>Batticaloa, Sri Lanka</p>
            </div>
          </div>
          <div class="contact-item">
            <i class="fas fa-clock contact-icon"></i>
            <div>
              <h4>Working Hours</h4>
              <p>Monday - Friday: 9:00 AM - 6:00 PM</p>
              <p>Saturday: 10:00 AM - 2:00 PM</p>
              <p>Sunday: Closed</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="map-container">
          <div class="map-marker">
            <i class="fas fa-map-marker-alt"></i>
            Batticaloa, Sri Lanka
          </div>
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.995062595741!2d71.70145051495809!3d7.570495994959095!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3af8e44437980423%3A0x1b316b60e5b32f67!2sBatticaloa!5e0!3m2!1sen!2slk!4v1680841479160!5m2!1sen!2slk"
                  style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
      </div>
    </div>

    <div class="row mt-4">
      <div class="col-12">
        <div class="contact-form">
          <h3>Send Us a Message</h3>
          <form id="contactForm">
            <div class="mb-3">
              <input type="text" class="form-control" id="name" placeholder="Your Name" required>
            </div>
            <div class="mb-3">
              <input type="email" class="form-control" id="email" placeholder="Your Email" required>
            </div>
            <div class="mb-3">
              <input type="tel" class="form-control" id="phone" placeholder="Your Phone" required>
            </div>
            <div class="mb-3">
              <select class="form-control" id="subject" required>
                <option value="">Select Subject</option>
                <option value="booking">Lesson Booking Inquiry</option>
                <option value="schedule">Schedule Change</option>
                <option value="feedback">Feedback</option>
                <option value="other">Other</option>
              </select>
            </div>
            <div class="mb-3">
              <textarea class="form-control" id="message" rows="4" placeholder="Your Message" required></textarea>
            </div>
            <button type="submit" class="btn submit-btn">Send Message</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
  document.getElementById('contactForm').addEventListener('submit', function(e) {
    e.preventDefault();

    // Get form data
    const formData = {
      name: document.getElementById('name').value,
      email: document.getElementById('email').value,
      phone: document.getElementById('phone').value,
      subject: document.getElementById('subject').value,
      message: document.getElementById('message').value
    };

    // Here you would typically send the form data to your server
    alert('Thank you for your message! We will get back to you soon.');
    this.reset();
  });
</script>
</body>
</html>
