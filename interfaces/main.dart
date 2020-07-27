void main() {
  CustomerManager customerManager = new CustomerManager();
  customerManager.Save(new EmailLogger());
}

class ICustomerManager {
  void Save(ILogger iLogger) {}
}

class CustomerManager implements ICustomerManager {
  @override
  void Save(ILogger iLogger) {
    print("Customer Saved");
    iLogger.Log("Log Data");
  }
}

class ILogger {
  void Log(String message) {}
}

class EmailLogger implements ILogger {
  @override
  void Log(String message) {
    print("Logged to email " + message);
  }
}

class DatabaseLogger implements ILogger {
  @override
  void Log(String message) {
    print("Logged to database " + message);
  }
}
