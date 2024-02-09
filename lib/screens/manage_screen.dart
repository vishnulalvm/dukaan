import 'package:flutter/material.dart';

class ManageScreen extends StatelessWidget {
  const ManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [Icon(Icons.search)],
       backgroundColor: const Color(0xFF136EB4),
      title: const Text(
          'Manage',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),

      ),
    );
  }
}



