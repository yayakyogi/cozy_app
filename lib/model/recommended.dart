class Recommended {
  int? id;
  int? price;
  int? rate;
  late String name;
  late String imageUrl;
  late String city;
  late String country;
  late String address;
  late String phone;
  late String mapUrl;
  List? photos;
  int? numberOfKitchens;
  int? numberOfBedrooms;
  int? numberOfCupBoards;

  Recommended(
      {required this.id,
      required this.price,
      required this.rate,
      required this.name,
      required this.imageUrl,
      required this.city,
      required this.country,
      this.address = '',
      this.phone = '',
      this.mapUrl = '',
      this.numberOfBedrooms,
      this.numberOfCupBoards,
      this.numberOfKitchens,
      this.photos});

  Recommended.fromJson(json) {
    id = json['id'];
    price = json['price'];
    rate = json['rating'];
    name = json['name'];
    imageUrl = json['image_url'];
    city = json['city'];
    country = json['country'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    numberOfBedrooms = json['number_of_kitchens'];
    numberOfCupBoards = json['number_of_cupboards'];
    numberOfKitchens = json['number_of_kitchens'];
    photos = json['photos'];
  }
}
