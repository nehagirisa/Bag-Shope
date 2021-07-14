import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/Handbag-1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 444,
      size: 8,
      description: dummyText,
      image: "assets/images/Handbag-2.png",
      color: Color(0xFFff4d4d)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 240,
      size: 10,
      description: dummyText,
      image: "assets/images/Handbag-3.png",
      color: Color(0xFF4da6ff)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 500,
      size: 11,
      description: dummyText,
      image: "assets/images/Handbag-4.png",
      color: Color(0xFFffe066)),
  Product(
      id: 5,
      title: "Office Code",
      price: 400,
      size: 12,
      description: dummyText,
      image: "assets/images/Handbag-5.png",
      color: Color(0xFFff531a)),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/Handbag-7.png",
    color: Color(0xFFd9b38c),
  ),
  Product(
    id: 7,
    title: "Fasion Bag",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/Handbag-8.png",
    color: Color(0xFFb3c6ff),
  ),
  Product(
    id: 8,
    title: "Fasion Bag",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/Handbag-9.png",
    color: Color(0xFFff8c66),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
