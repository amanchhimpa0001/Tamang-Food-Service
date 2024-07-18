class featured_partners_model {
  String image, foodname, location, rating, mints, delivery, id;
  featured_partners_model(
      {required this.image,
      required this.foodname,
      required this.location,
      required this.rating,
      required this.mints,
      required this.delivery,
      required this.id});
}

class Restaurants_model {
  String image, foodname, foodtype, rating, mints, deliverycost, id;
  Restaurants_model(
      {required this.image,
      required this.foodname,
      required this.foodtype,
      required this.rating,
      required this.mints,
      required this.deliverycost,
      required this.id});
}
