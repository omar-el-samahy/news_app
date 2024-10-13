import 'package:flutter/cupertino.dart';

class Category {
  final String image, name;

  Category({required this.image, required this.name});
}

List<Category> category = [
  Category(
      image:
          ("https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      name: "Sports"),
  Category(
      image:
          ("https://images.pexels.com/photos/669610/pexels-photo-669610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      name: "Business"),
  Category(
      image:
          ("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      name: "Technology"),
  Category(
      image:
          ("https://images.pexels.com/photos/114820/pexels-photo-114820.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      name: "Entertainment"),
  Category(
      image:
          ("https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      name: "Health"),
  Category(
      image:
          ("https://images.pexels.com/photos/5146462/pexels-photo-5146462.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      name: "General"),
  Category(
      image:
          ("https://images.pexels.com/photos/2280571/pexels-photo-2280571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      name: "Sciences"),
];
