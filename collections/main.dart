void main() {
  List list = new List();
  list.add("Ankara");
  list.add(1);

  List<String> cities = new List<String>();
  cities.add("Ankara");
  cities.add("İstanbul");

  for (var city in cities) {
    print(city);
  }

  cities.remove("İstanbul");
  for (var city in cities) {
    print(city);
  }

  List<Customer> customers = new List<Customer>();
  customers.add(new Customer());
}

class Customer {
  int id;
  String firstName;
  String lastName;
  String city;
}
