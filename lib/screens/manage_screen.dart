import 'package:dukaan/widgets/manage_card.dart';
import 'package:flutter/material.dart';

class ManageScreen extends StatelessWidget {
  const ManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 229, 229),
      appBar: AppBar(
        centerTitle: true,
        actions: const [Icon(Icons.search)],
        backgroundColor: const Color(0xFF136EB4),
        title: const Text(
          'Manage Store',
          
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          children: [
            manageCard(
                icon: Icons.campaign,
                title: 'Markection\nDesigns',
                color: Colors.orange),
            manageCard(
                icon: Icons.currency_rupee_rounded,
                title: 'Online\nPayments',
                color: Colors.green),
            manageCard(
                icon: Icons.verified,
                title: 'Discount\nCoupons',
                color: Colors.yellow),
            manageCard(
                icon: Icons.group,
                title: 'My\nCustomer',
                color: Colors.blue),
            manageCard(
                icon: Icons.qr_code_scanner_outlined,
                title: 'QR Code\nScanner',
                color: Colors.purple),
            manageCard(
                icon: Icons.payment,
                title: 'Extra\nCharges',
                color: Colors.grey),
                manageCard(
                icon: Icons.list_alt_outlined,
                title: 'Order\nForm',
                color: Colors.orange),
                
          ],
        ),
      ),
    );
  }
}
