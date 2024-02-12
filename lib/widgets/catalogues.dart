import 'package:dukaan/screens/order_screen.dart';
import 'package:flutter/material.dart';

Widget buildListView(String tabName) {
  return Column(
    children: [
      Expanded(
        child: ListView.builder(
          itemCount: 20, // Example itemCount
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const OrderScreen()));
                },
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
                            SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.network('https://yogisorganic.com/cdn/shop/products/Pineapple_600x@2x.jpg?v=1496866405'),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Product Name'),
                                Text('1 piece'),
                                Text('₹55'),
                                Text('in stock')
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
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                         
                          alignment: Alignment.center,
                          child: const Row(
                            
                            children: [
                              Icon(Icons.share),
                              Text('Share Product'),
                            ],
                          ),
                        )


                        
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        
      ),
      // FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
    ],
  );
}
