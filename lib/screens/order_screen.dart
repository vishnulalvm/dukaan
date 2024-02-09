import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Row(
            children: [
              Text("May 13/12/2033"),
              Text('Delived'),
            ],
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}