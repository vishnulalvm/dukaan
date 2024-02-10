import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order #16885'),
      ),
      body: ListView(
        children: const [
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