import 'package:flutter/material.dart';
import 'package:tiktok/pages/home.dart';
import 'package:tiktok/pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  final List<Widget> _pages = [
    // WE HAVE ONLY 2 SEPERATE FILES FOR PAGES
    UserHomePage(),
    const Center(child: Text("Discover"),),
    const Center(child: Text("Add"),),
    const Center(child: Text("Inbox"),),
    UserProfilePage()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      
      // PLEASE ADD REAL VECTOR ICONS IMAGES AT LAST !!!!
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Discover'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble),label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:'Profile'),
        ],

      ),
    );
  }
}

