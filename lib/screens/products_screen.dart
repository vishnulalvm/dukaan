import 'package:dukaan/widgets/catalogues.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Products',
              ),
              Tab(
                text: 'Categories',
              )
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            dividerColor: Colors.white,
            indicatorColor: Colors.white,
          ),
          backgroundColor: const Color(0xFF136EB4),
          title: const Text(
            'Catalogue',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(12),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: TabBarView(children: [
          buildListView('tab one'),
          buildListView('tab two'),
        ]),
        floatingActionButton: SizedBox(
          width: 200,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.orange,
            child: const Text(
              'Add new product',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
