import 'package:flutter/material.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: 170,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Product Name'),
                      Text('1 piece'),
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.more_vert),
                      const SizedBox(
                        height: 30,
                      ),
                      Switch(value: true, onChanged: (index) {})
                    ],
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Share Product'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
