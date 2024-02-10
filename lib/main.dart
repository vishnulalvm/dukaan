import 'package:dukaan/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:dukaan/screens/account_screen.dart';
import 'package:dukaan/screens/manage_screen.dart';
import 'package:dukaan/screens/orders_screen.dart';
import 'package:dukaan/screens/products_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF136EB4)),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Color(0xFF136EB4),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(
            color: Colors.white
          ),
          
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.white
          ),
        ),
        toggleButtonsTheme: const ToggleButtonsThemeData(color: Color(0xFF136EB4)) 

      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int bottomIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const OrdersScreen(),
    const ProductScreen(),
    const ManageScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[bottomIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) {
          setState(() {
            bottomIndex = newIndex;
          });
        },
        currentIndex: bottomIndex,
        selectedItemColor: Colors.blue, // Color for selected icon
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt,
              ),
              label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view,
              ),
              label: 'Products'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.layers,
              ),
              label: 'Manage'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Account'),
        ],
      ),
    );
  }
}
