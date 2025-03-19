Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 3), () => "42.5 degrees");
}

void main() {
  print("Start");

  fetchData().then((value) => print("The value is: $value"));

  print("End");
}
