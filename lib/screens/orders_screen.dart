import 'package:dukaan/screens/order_screen.dart';
import 'package:dukaan/widgets/divider.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: const [Icon(Icons.search)],
        backgroundColor: const Color(0xFF136EB4),
        title: const Text(
          'Orders',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("All orders"),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_drop_down),
                    label: const Text('Lifetime')),
              ],
            ),
          ),
          divider(20),
          oderItem(
              title: 'Bananna',
              subtitle: "Qty : 1kg",
              status: "shipped",
              url:
                  "https://fruitboxco.com/cdn/shop/products/asset_2_grande.jpg?v=1571839043"),
                  oderItem(
              title: 'Orange',
              subtitle: "Qty : 500g",
              status: "Packing",
              url:
                  "https://media.istockphoto.com/id/185284489/photo/orange.jpg?s=612x612&w=0&k=20&c=m4EXknC74i2aYWCbjxbzZ6EtRaJkdSJNtekh4m1PspE="),
                  oderItem(
              title: 'Tomato',
              subtitle: "Qty : 1.2kg",
              status: "Picked",
              url:
                  "https://img.etimg.com/thumb/width-640,height-480,imgsize-56196,resizemode-75,msid-95423731/magazines/panache/5-reasons-why-tomatoes-should-be-your-favourite-fruit-this-year/tomatoes-canva.jpg"),
        ],
      ),
    );
  }

  Widget oderItem(
      {required var title,
      required var subtitle,
      required var status,
      required var url}) {
    return ListTile(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const OrderScreen()));
      },
      title: Text(title),
      leading: Image.network(url),
      trailing: Text(
        status,
        style: const TextStyle(fontSize: 14),
      ),
      subtitle: Text(subtitle),
    );
  }
}
