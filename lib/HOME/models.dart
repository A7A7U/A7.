

class Product {
  final String firstName, email, image;
  final int phone;

  Product({
    required this.firstName,
    required this.email,
    required this.phone,
    required this.image,
  });
}


class RequstIT {
  final String reservations;
  final String NameDoctor;
  RequstIT({
    required this.reservations,
    required this.NameDoctor,
  });
}

class Response {
  final String name;
  final String Date;
  Response({
    required this.name,
    required this.Date,
  });
}

// list of products
List<dynamic> products  = [
  Product(
    firstName: "Smcmdm ",
    email: "heart",
    phone: 55557567569,
    image: "images/pol.jpg",
  ),
  Product(
    firstName: "tytsdc",
    email: "heart",
    phone: 57756756759,
    image: "images/pol.jpg",
  ),
  Product(
    firstName: " gfdcdcsdc",
    email: "bones",
    phone: 585675675789,
    image: "images/pol.jpg",
  ),
  Product(
    firstName: "bbcdc",
    email: "bones",
    phone: 256567567259,
    image: "images/pol.jpg",
  ),
  Product(
    firstName: "rtrsssssss",
    email: "bones",
    phone: 5565898896859889,
    image: "images/360.jpg",
  ),
];
List<dynamic> Requst = [
  RequstIT(reservations: "agree", NameDoctor: "ali"),
  RequstIT(reservations: "Non agree", NameDoctor: "Mohamed")
];

List<dynamic> ResponseIT = [
  Response(name: "salm mohamed ali", Date: "2/5/2023"),
  Response(name: "Ali mohamed ali", Date: "22/2/2023"),
  Response(name: "Ali mohamed ali", Date: "22/2/2023"),
  Response(name: "Ali mohamed ali", Date: "22/2/2023")
];
