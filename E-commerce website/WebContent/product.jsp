<!DOCTYPE html>
<html>
<head>
    <title>Product Detail</title>
    <link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
    <header>
        <h1>Product Detail</h1>
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
        <div class="product-detail">
            <%-- JSP code to fetch and display product details based on the product ID --%>
            <div class="product-image">
               <img src="img1.jpg" alt="Product 1" width="24%">
            </div>
            <div class="product-info">
                <h2>Product 1</h2>
                <p>Price: $99</p>
                <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam pretium vestibulum nisl ac ultrices.</p>
                <a href="cart.jsp">Add to Cart</a>
            </div>
        </div>
    </main>
    <footer>
        <p>&copy; 2023 E-commerce Website. All rights reserved.</p>
    </footer>
</body>
</html>
