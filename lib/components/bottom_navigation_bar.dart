import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavigationBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavigationBar({Key? key, required this.onTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.grey.shade200
      ),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        haptic: true,
        tabBorderRadius: 15,
        gap: 3,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        color: Colors.grey[800],
        activeColor: Colors.purple,
        backgroundColor: Colors.transparent,
        iconSize: 24,
        tabBackgroundColor: Colors.purple.withOpacity(0.1),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tabs: const [
          GButton(icon: Icons.home, text: 'Home',),
          GButton(icon: Icons.search_outlined, text: 'Search',),
          GButton(icon: Icons.shopping_bag, text: 'Cart',),
          GButton(icon: Icons.person_outline, text: 'Profile',),
        ],
      ),
    );
  }
}
