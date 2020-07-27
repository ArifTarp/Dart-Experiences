void main() {
  CustomerManager customerManager = new CustomerManager();
  PersonelManager personelManager = new PersonelManager();
  customerManager.GetBestCustomer();
  customerManager.Save();
  personelManager.Pay();
  personelManager.Save();

  CustomerManager.operation();
}

class PersonManager {
  void Save() {
    print("Saved");
  }
}

class CustomerManager extends PersonManager {
  void GetBestCustomer() {
    print("Best Customer Brought");
  }

  static operation() {
    print("Static operation");
  }
}

class PersonelManager extends PersonManager {
  void Pay() {
    print("Salary Paid");
  }

  @override
  void Save() {
    print("New saved");
    super.Save();
  }
}
