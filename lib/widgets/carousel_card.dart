import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final Color color;
  final String discrption;
  final String image;

  const CarouselCard(
      {super.key,
      required this.color,
      required this.discrption,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: color,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              discrption,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
