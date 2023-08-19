<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
    <link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
    <header>
        <h1>Our Products</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="products.jsp">Products</a></li>
                <li><a href="cart.jsp">Cart</a></li>
                <li><a href="checkout.jsp">Checkout</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>All Products</h2>
        <div class="product-list">
            <%-- JSP code to fetch and iterate over all products --%>
           <div class="product">
                <img src="img1.jpg" alt="Product 1" width="100%" height="73%">
                <h3>boAt xtend SmartWatch</h3>
                <h4><i class="fa fa-inr"></i>1710</h4>
                <a href="product.jsp?id=1">View Details</a>
            </div>
                        <div class="product">
                <img src="img2.jpg" alt="Product 2" width="100%" height="73%">
                 <h3>boAt Strom SmartWatch</h3>
                <h4><i class="fa fa-inr"></i>1499</h4>
                <a href="product.jsp?id=2">View Details</a>
            </div>
                        <div class="product">
                <img src="img3.jpg" alt="Product 3" width="100%" height="73%">
                <h3>fire Boltt SmartWatch</h3>
                <h4><i class="fa fa-inr"></i>2230</h4>
                <a href="product.jsp?id=3">View Details</a>
            </div>
                        <div class="product">
                <img src="img4.jpg" alt="Product 4" width="100%" height="73%">
               <h3>boAt wave Connect SmartWatch</h3>
                <h4><i class="fa fa-inr"></i>1789</h4>
                <a href="product.jsp?id=4">View Details</a>
            </div>
				 <div class="product">
                <img src="img5.jpg" alt="Product 5" width="100%" height="73%">
                <h3>Apple 7 series SmartWatch</h3>
                <h4><i class="fa fa-inr"></i>1710</h4>
                <a href="product.jsp?id=5">View Details</a>
            </div>
            <div class="product">
                <img src="img6.jpg" alt="Product 6" width="100%" height="73%">
                <h3>Apple 38mm SmartWatch</h3>
                <h4><i class="fa fa-inr"></i>1710</h4>
                <a href="product.jsp?id=6">View Details</a>
            </div>
            <div class="product">
                <img src="img7.jpg" alt="Product 7" width="100%" height="73%">
                <h3>Apple SmartWatch</h3>
                <h4><i class="fa fa-inr"></i>1710</h4>
                <a href="product.jsp?id=7">View Details</a>
            </div>
            <div class="product">
                <img src="img8.jpg" alt="Product 8" width="100%" height="73%">
                <h3>onePlus SmartWatch</h3>
                <h4><i class="fa fa-inr"></i>1710</h4>
                <a href="product.jsp?id=8">View Details</a>
            </div>
            
        </div>
    </main>
    <footer class="footer">
      <div class="container">
        <div class="row">
          <div class="footer-col">
            <h4>About E-commerce</h4>
            <ul>
              <li><a href="#">About Us</a></li>
              <li><a href="#">Contact Us</a></li>
              <li><a href="#">Offers</a></li>
              <li><a href="#">Careers</a></li>
              <li><a href="#">Values</a></li>
            </ul>
          </div>
          <div class="footer-col">
            <h4>Info</h4>
            <ul>
              <li><a href="#">T & c</a></li>
              <li><a href="#">Privacy Policy</a></li>
              <li><a href="#">FAQ</a></li>
              <li><a href="#">Blog</a></li>
              
              <li><a href="#"> Agent Registration</a></li>
              <li><a href="#"> Insurance Partner</a></li>
              <li><a href="#">User Agreement</a></li>
            </ul>
          </div>
          <div class="footer-col">
            <h4>Global Sites</h4>
            <ul>
              <li><a href="#">India</a></li>
              <li><a href="#">Singapore</a></li>
              <li><a href="#">Malaysia</a></li>
              <li><a href="#">Indonesia</a></li>
              <li><a href="#">Peru</a></li>
              <li><a href="#">Colombia</a></li>
            </ul>
          </div>
          
          <div class="footer-col">
           <br>
          
          <div class="social-links">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>  
          </div>
        </div>
        </div>
      </div>
    </footer>
</body>
</html>
