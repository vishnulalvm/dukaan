import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  final String titlename;
  final String value;
  const OverviewCard({super.key, required this.titlename, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      width: 180,
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titlename,style: const TextStyle(
              fontSize: 12,
              
            ),
            ),
          const SizedBox(
            height: 8,
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
