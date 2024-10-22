class User {
  String name;
  String email;
  int age;

  User(this.age, this.email, this.name);

  String getUserinfo() {
    return ('Name, $name, Email, $email, Age,$age');
  }

  Future<String> fetchUserdata() async {
    await Future.delayed(const Duration(seconds: 2));
    return getUserinfo();
  }
}

Future<void> main() async {
  User user = User(26, 'Hamzahamin786@gmail.com', 'Hamza');
  String result = await user.fetchUserdata();

  print(result);
}
