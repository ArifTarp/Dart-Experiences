void main() {
  List students = new List(3);
  students[0] = "Arif";
  students[1] = "Orhan";
  students[2] = "İshak";
  //students.add("Salih");
  print(students);

  var cities = ["Ankara", "İstanbul", "İzmir", "Gaziantep"];
  cities.add("Kars");
  print(cities);
  print(cities.length);
  print(cities.first);
  print(cities.last);
  cities.insert(1, "Tunceli");
  print(cities);
  var index = cities.indexOf("Gaziantep");
  print(index);
  var queryForCities =
      cities.firstWhere((city) => city.contains("an")); //case sensitive
  print(queryForCities);
}
