void main() {
  var count = 10;

  if (count > 20) {
    print("The number is greater than 20");
  } else if (count == 20) {
    print("Number equals 20");
  } else {
    print("The number is less than 20");
  }

  var note = "A";
  switch (note) {
    case "A":
      print("very good one");
      print("very good two");
      break;
    case "B":
      print("medium");
      break;
    case "C":
      print("very bad");
      break;
    case "D":
      print("awful");
      break;
    default:
      print("not related note");
      break;
  }
}
