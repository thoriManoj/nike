import 'package:flutter/material.dart';

class NikeShoes {
  final String id;
  final String brand;
  final String title;
  final String imageUrl;
  final String description;
  final double price;
  final Color color;

  NikeShoes({
    this.id,
    this.brand,
    this.title,
    this.imageUrl,
    this.description,
    this.price,
    this.color,
  });
}

List<NikeShoes> shoesList = [

  NikeShoes(
    id: 'shoes6',
    brand: 'NIKE',
    title: 'METCON-6 FLYEASE',
    imageUrl: 'assets/images/shoe6.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 170.00,
    color: Colors.teal,
  ),
  NikeShoes(
    id: 'shoes1',
    brand: 'NIKE',
    title: 'EPIC-RECT',
    imageUrl: 'assets/images/shoe1.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 130.00,
    //color: Color(0xFFE49B89),
    color: Color(0xFFF05454),
  ),
  NikeShoes(
    id: 'shoes5',
    brand: 'NIKE',
    title: 'METCON-6 FLYEASE',
    imageUrl: 'assets/images/shoe5.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 120.00,
    // color: Color(0xFF69C000),
    color: Color(0xFF465587),
  ),
  NikeShoes(
    id: 'shoes7',
    brand: 'NIKE',
    title: 'AIR-PEGASUS',
    imageUrl: 'assets/images/shoe7.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 110.00,
    //color: Color(0xFF212121),
    //color: Color(0xff1d2d50),
    // color: Color(0xff092532),
    //color: Colors.white.withOpacity(0.5),

    color: Color(0xffff5200).withOpacity(0.8),
  ),

  NikeShoes(
    id: 'shoes3',
    brand: 'NIKE',
    title: 'AIR-270',
    imageUrl: 'assets/images/shoe3.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 150.00,
    //color: Color(0xFF4E78CE),
    color: Color(0xFF14274e),
  ),
  NikeShoes(
    id: 'shoes4',
    brand: 'NIKE',
    title: 'AF-ZOOM-1/1',
    imageUrl: 'assets/images/shoe4.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 140.00,
    //color: Color(0xffe7305b),
    color: Colors.red,
  ),
  NikeShoes(
    id: 'shoesNew',
    brand: 'NIKE',
    title: 'Superrep-Cardio',
    imageUrl: 'assets/images/shoe_new.png',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 140.00,
    //color: Color(0xffe7305b),
    color: Colors.red,
  ),
  NikeShoes(
      id: 'shoes8',
      brand: 'NIKE',
      title: 'AIR-MAX-ZM950',
      imageUrl: 'assets/images/shoe8.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 130.00,
      color: Colors.blueGrey),
  NikeShoes(
    id: 'shoes6',
    brand: 'NIKE',
    title: 'METCON-6 FLYEASE',
    imageUrl: 'assets/images/shoe6.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 170.00,
    color: Colors.teal,
  ),
  NikeShoes(
    id: 'shoes1',
    brand: 'NIKE',
    title: 'EPIC-RECT',
    imageUrl: 'assets/images/shoe1.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 130.00,
    //color: Color(0xFFE49B89),
    color: Color(0xFFF05454),
  ),
  NikeShoes(
    id: 'shoes5',
    brand: 'NIKE',
    title: 'METCON-6 FLYEASE',
    imageUrl: 'assets/images/shoe5.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 120.00,
    // color: Color(0xFF69C000),
    color: Color(0xFF465587),
  ),
  NikeShoes(
    id: 'shoes2',
    brand: 'NIKE',
    title: 'AIR-MEX',
    imageUrl: 'assets/images/shoe2.png',
    description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 130.00,
    color: Color(0xFF4E78CE),
  ),
  NikeShoes(
    id: 'shoes7',
    brand: 'NIKE',
    title: 'AIR-PEGASUS',
    imageUrl: 'assets/images/shoe7.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 110.00,
    //color: Color(0xFF212121),
    //color: Color(0xff1d2d50),
    // color: Color(0xff092532),
    //color: Colors.white.withOpacity(0.5),

    color: Color(0xffff5200).withOpacity(0.8),
  ),
  NikeShoes(
    id: 'shoes2',
    brand: 'NIKE',
    title: 'AIR-MEX',
    imageUrl: 'assets/images/shoe2.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 130.00,
    color: Color(0xFF4E78CE),
  ),
  NikeShoes(
    id: 'shoes3',
    brand: 'NIKE',
    title: 'AIR-270',
    imageUrl: 'assets/images/shoe3.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 150.00,
    //color: Color(0xFF4E78CE),
    color: Color(0xFF14274e),
  ),
  NikeShoes(
    id: 'shoes4',
    brand: 'NIKE',
    title: 'AF-ZOOM-1/1',
    imageUrl: 'assets/images/shoe4.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    price: 140.00,
    //color: Color(0xffe7305b),
    color: Colors.red,
  ),
  NikeShoes(
      id: 'shoes8',
      brand: 'NIKE',
      title: 'AIR-MAX-ZM950',
      imageUrl: 'assets/images/shoe8.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 130.00,
      color: Colors.blueGrey),
];
