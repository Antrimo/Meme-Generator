import 'package:flutter/material.dart';
import 'package:meme/screens/upload_screen.dart';
import 'package:meme/screens/profile_screen.dart';
import 'package:meme/screens/save_screen.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedTab = 0;
  
  final List<Widget> _screens = [
    const UploadScreen(),
    const SaveScreen(), 
    const ProfileScreen(),
    
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
      bottomNavigationBar: Container(
        color: Colors.black,
        child: BottomNavBar(
          selectedIndex: _selectedTab,
          onTabChange: _onTabChange,
        ),
      ),
    );
  }
}
