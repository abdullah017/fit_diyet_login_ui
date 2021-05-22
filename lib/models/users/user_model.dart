class User {
  final String name;
  final String email;
  final String password;
  final String role;
  final String image;

  User({this.name, this.email, this.password, this.role, this.image});
}

List<User> userList = [
  User(
      name: "Dr. Jessica Vania",
      email: "a@mail.com",
      password: "80",
      role: "Cardiologist",
      image:
          "assets/5-Ways-to-Help-Employees-Choose-the-Right-Primary-Care-Doctor--e1543342970537.jpg"),
  User(
      name: "AHMET TAS",
      email: "asd@mail.com",
      password: "80",
      role: "Danisan",
      image:
          "assets/5-Ways-to-Help-Employees-Choose-the-Right-Primary-Care-Doctor--e1543342970537.jpg"),
];
