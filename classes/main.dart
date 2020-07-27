void main() {
  CustomerManager customerManager = new CustomerManager();

  // Customer customer = new Customer();
  // customer.firstName = "Arif";
  // customer.lastName = "Tarpıcı";
  // customer.id = 1;

  Customer customer = new Customer.namedCons("Arif", "Tarpıcı", 1);
  customer.customerName = "en";
  customerManager.Save(customer);
  customerManager.Delete(customer);
  customerManager.Update(customer);
}

class CustomerManager {
  void Save(Customer customer) {
    print("Customer Saved: " + customer.firstName);
  }

  void Delete(Customer customer) {
    print("Customer Deleted: " + customer.firstName);
  }

  void Update(Customer customer) {
    print("Customer Updated: " + customer.firstName);
  }
}

// class Customer {
//   int id;
//   String firstName;
//   String lastName;
// }

class Customer {
  int id;
  String firstName;
  String lastName;

  Customer.namedCons(String firstName, String lastName, int id) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.id = id;
    print("Class generated");
  }

  Customer() {}

  String get customerName {
    return this.firstName;
  }

  void set customerName(String firstName) {
    if (firstName.length < 2) {
      print("Customer name must be a minimum of two characters");
    } else {
      this.firstName = firstName;
    }
  }
}
