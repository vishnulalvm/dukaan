import 'package:dukaan/widgets/divider.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Order #16885',style: TextStyle(fontSize: 20),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(children: [
            const SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("May 31,05:42 PM"),
                  SizedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: Colors.blue,
                        ),
                        Text('Delivered'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            divider(10),
            const Divider(),
            divider(15),
            const SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("1 ITEM"),
                  SizedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.receipt_outlined,
                          color: Colors.blue,
                        ),
                        Text(
                          'RECEIPT',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            divider(15),

            ListTile(
              title: const Text(
                'Explore | Men | Navy Blue',
                style: TextStyle(fontSize: 14),
              ),
              leading: Image.network('https://fruitboxco.com/cdn/shop/products/asset_2_grande.jpg?v=1571839043'),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1 piece'),
                  Text('Size:XL'),
                  Text('1 × ₹799'),

                  
                ],
              ),
              trailing: const Text('₹799'),
            ),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Item Total'),
                    Text('Delivery'),
                    Text(
                      'Grand Total',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('₹799'),
                    Text(
                      'Free',
                      style: TextStyle(color: Colors.green),
                    ),
                    Text(
                      '- ₹799',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            divider(20),
            const SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("CUSTOMER DETAILS"),
                  SizedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.blue,
                        ),
                        Text(
                          'SHARE',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            divider(15),
            const ListTile(
              title: Text('Deepa'),
              subtitle: Text('+91-87837434'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.chat),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.call_rounded),
                ],
              ),
            ),
            divider(15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address',
                  style: TextStyle(fontSize: 18),
                ),
                Text('D 1101 Chartereed Beverly \nHill, Subramanyanpuram P.O', style: TextStyle(fontSize: 14),),
              ],
            ),
            divider(20),

            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                  'City',
                  style: TextStyle(fontSize: 18),
                ),
                 Text(
                  'Bangaloru',
                  style: TextStyle(fontSize: 18),
                ),
                    
                  ],
                ),
                SizedBox(
                  width: 80,
                ),
                Column(
                  children: [
                     Text(
                  'Pincode',
                  style: TextStyle(fontSize: 18),
                ),
                 Text(
                  '680123',
                  style: TextStyle(fontSize: 18),
                ),
                    
                  ],
                )
              ],
            ),
            divider(120),
            GestureDetector(
              onTap: (){},
              child: Container(
                alignment: Alignment.center,
                width: 130,
                height: 60,
                decoration: BoxDecoration(border: Border.all(
                  width: 2,color: Colors.blue
                ),
                borderRadius: BorderRadius.circular(10)),
                child: const Text('Share Receipt',style: TextStyle(fontSize: 20,color: Colors.blue),),
              ),
            )
          ]
          ),
        ));
  }
}
