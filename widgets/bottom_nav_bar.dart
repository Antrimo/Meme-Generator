import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChange;

  const BottomNavBar({super.key, required this.selectedIndex, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: GNav(
        gap: 8,
        activeColor: Colors.white,
        color: Colors.grey,
        backgroundColor: Colors.black,
        tabBackgroundColor: Colors.grey.shade800,
        padding: const EdgeInsets.all(12),
        onTabChange: onTabChange,
        selectedIndex: selectedIndex,
        tabs: const [
          GButton(icon: Icons.edit, text: 'Edit'),
          GButton(icon: Icons.save, text: 'Saved'),
          GButton(icon: Icons.person, text: 'Profile'),
        ],
      ),
    );
  }
}
