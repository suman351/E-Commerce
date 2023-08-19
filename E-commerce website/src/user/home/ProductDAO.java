package user.home;

import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    // Dummy data for demonstration
    private static List<Product> products = new ArrayList<>();

    static {
        // Populate dummy products
        products.add(new Product(1, "Product 1", 99.99, "Lorem ipsum dolor sit amet."));
        products.add(new Product(2, "Product 2", 49.99, "Consectetur adipiscing elit."));
        products.add(new Product(3, "Product 3", 79.99, "Nullam pretium vestibulum nisl."));
    }

    public List<Product> getAllProducts() {
        return products;
    }

    public Product getProductById(int id) {
        for (Product product : products) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }
}
