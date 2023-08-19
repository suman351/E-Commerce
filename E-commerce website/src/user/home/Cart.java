package user.home;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<CartItem> items = new ArrayList<>();

    public void addItem(Product product, int quantity) {
        // Check if the product is already in the cart
        for (CartItem item : items) {
            if (item.getProduct().getId() == product.getId()) {
                item.setQuantity(item.getQuantity() + quantity);
                return;
            }
        }

        // Product not found in the cart, add a new cart item
        CartItem newItem = new CartItem(product, quantity);
        items.add(newItem);
    }

    public void removeItem(int productId) {
        for (CartItem item : items) {
            if (item.getProduct().getId() == productId) {
                items.remove(item);
                return;
            }
        }
    }

    public List<CartItem> getItems() {
        return items;
    }

    public double getTotalPrice() {
        double total = 0.0;
        for (CartItem item : items) {
            total += item.getProduct().getPrice() * item.getQuantity();
        }
        return total;
    }
}

