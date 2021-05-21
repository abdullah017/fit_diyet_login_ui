class Danisan {
  final String name;
  final double length;
  final double weight;
  final int age;
  final String image;
  Danisan({this.name, this.length, this.weight, this.age, this.image});
}

class Appoinment {
  final String danisanadi;
  final String tarih;
  final String ucret;

  Appoinment({this.danisanadi, this.tarih, this.ucret});
}

List<Appoinment> appoinmentList = [
  Appoinment(
    danisanadi: "AHMET TAS",
    ucret: "100",
    tarih: "10/09/2021",
  ),
  Appoinment(
    danisanadi: "AYSE KARA",
    ucret: "100",
    tarih: "11/09/2021",
  ),
  Appoinment(
    danisanadi: "MEHMET GÜLMEZ",
    ucret: "100",
    tarih: "12/09/2021",
  ),
  Appoinment(
    danisanadi: "FATMA TATLI",
    ucret: "100",
    tarih: "13/09/2021",
  ),
  Appoinment(
    danisanadi: "KADİR KEL",
    ucret: "100",
    tarih: "14/09/2021",
  ),
  Appoinment(
    danisanadi: "BÜŞRA DAHATATLI",
    ucret: "100",
    tarih: "15/09/2021",
  ),
];
List<Danisan> danisanList = [
  Danisan(
      name: "AHMET TAS",
      length: 1.60,
      weight: 80.5,
      age: 30,
      image:
          "assets/5-Ways-to-Help-Employees-Choose-the-Right-Primary-Care-Doctor--e1543342970537.jpg"),
  Danisan(
      name: "AYSE KARA",
      length: 1.56,
      weight: 87,
      age: 52,
      image: "assets/92019175-happy-doctor-with-clipboard-at-clinic.jpg"),
  Danisan(
      name: "MEHMET GÜLMEZ",
      length: 1.65,
      weight: 85,
      age: 41,
      image: "assets/doctor-in-branding-article.jpg"),
  Danisan(
      name: "FATMA TATLI",
      length: 1.62,
      weight: 90,
      age: 23,
      image: "assets/eIFBqS61.jpg"),
  Danisan(
      name: "KADİR KEL",
      length: 1.90,
      weight: 120,
      age: 45,
      image: "assets/file-20191203-66986-im7o5.jpg"),
  Danisan(
      name: "BÜŞRA DAHATATLI",
      length: 1.65,
      weight: 60,
      age: 26,
      image: "assets/national-doctors-day-1-920x518.jpg"),
];
