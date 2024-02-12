import 'package:dukaan/widgets/divider.dart';
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
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.grey,
                    child: Image.network(
                      'https://insanelygoodrecipes.com/wp-content/uploads/2023/01/Fresh-Organic-Tangerine-Oranges-with-Leaves.jpg',
                      fit: BoxFit.cover,
                    ),
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
                    width: 80,
                  ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.more_vert),
                      divider(10),
                      const Row(
                        children: [
                          Icon(Icons.circle,color: Colors.blue,size: 16,),
                          Text('Successful'),
                        ],
                      )

                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
