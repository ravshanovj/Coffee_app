
import 'package:coffee_app/components/bottom_navigation_bar.dart';
import 'package:coffee_app/pages/cart_page.dart';
import 'package:coffee_app/pages/profile_page.dart';
import 'package:coffee_app/pages/search_page.dart';
import 'package:coffee_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = const [
    ShopPage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavigationBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[selectedIndex],
    );
  }
}
