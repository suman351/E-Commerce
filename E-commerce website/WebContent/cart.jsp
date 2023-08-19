<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>
    <link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
    <header>
        <h1>Shopping Cart</h1>
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
        <h2>Your Cart</h2>
        <table>
            <tr>
                <th>Product</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
            <%-- JSP code to fetch and iterate over cart items --%>
            <tr>
                <td>Product 1</td>
                <td>$99</td>
                <td>2</td>
                <td>$198</td>
            </tr>
            <!-- Repeat for other cart items -->
        </table>
        <a href="checkout.jsp">Proceed to Checkout</a>
    </main>
    <footer>
        <p>&copy; 2023 E-commerce Website. All rights reserved.</p>
    </footer>
</body>
</html>
