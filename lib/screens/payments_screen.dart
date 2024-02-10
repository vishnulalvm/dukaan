import 'package:dukaan/widgets/divider.dart';
import 'package:dukaan/widgets/paymethistory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({super.key});

  final int limit = 50000;
  final int currentValue = 10689;
  double calculateProgress(int value) {
    return (value / limit).clamp(0.0, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payments'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        //expanded added
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transation Limit',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  divider(10),
                  Text(
                      'A free limit up to which you will recive the online payments directly in your bank.'),
                  divider(10),
                  SizedBox(
                    height: 10,
                    child: LinearProgressIndicator(
                      value: calculateProgress(currentValue),
                      backgroundColor: Colors.grey[300],
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ),
                  divider(10),
                  Text(
                    '₹$currentValue Lift out of ₹$limit',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  divider(10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 50,
                      child: Text(
                        'Increase limit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF136EB4),
                        borderRadius:
                            BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            divider(25),
            paymetOption('Default Method', 'Online Payments',
                Icons.arrow_forward_ios),
            divider(25),
            paymetOption('Payment Profile', 'Bank Account',
                Icons.arrow_forward_ios),
            divider(15),
            Divider(
              thickness: 1,
            ),
            divider(25),
            paymetOption('Payment Overview', 'Life Time',
                Icons.keyboard_arrow_down),
            divider(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                paymentOverview('Amount On Hold', '₹100', Colors.orange),
                paymentOverview('Amount Recived', '₹13400', Colors.green),
              ],
            ),
            divider(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('On Hold')),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Payout(15)'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF136EB4),
                      foregroundColor: Colors.white),
                ),
                ElevatedButton(onPressed: () {}, child: Text('Refunds')),
              ],
            ),
            const PaymentHistory(),
            const PaymentHistory(),
             const PaymentHistory(),
            const PaymentHistory(),
          ],
        ),
      ),
    );
  }

  Widget paymetOption(String title, String payment, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          child: Row(
            children: [
              Text(
                payment,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              Icon(icon),
            ],
          ),
        )
      ],
    );
  }

  Widget paymentOverview(String title, String amout, Color color) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          divider(10),
          Text(
            amout,
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.w700),
          ),
        ],
      ),
      width: 190,
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
