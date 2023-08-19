package user.home;

public class CheckoutForm {
    private String name;
    private String address;
    private String email;
	public CheckoutForm() {
		
	}
	public CheckoutForm(String name, String address, String email) {
		super();
		this.name = name;
		this.address = address;
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

    
    
    // Constructor, getters, and setters
}

