import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedTab = 0;
  final List<Widget> _screens = [
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  void _onTabChange(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedTab],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedTab,
        onTabChange: _onTabChange,
      ),
    );
  }
}
