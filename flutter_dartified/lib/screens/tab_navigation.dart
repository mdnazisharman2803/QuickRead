import 'package:flutter/material.dart';
import 'package:flutter_dartified/screens/export_screens.dart';

class TabNavigation extends StatefulWidget {
  const TabNavigation({super.key});

  @override
  State<TabNavigation> createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {
  int currentIndex = 0;
  List<Widget> widgets = [
    const HomeScreen(),
    const HowItWorksScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1D2327),
        selectedItemColor: const Color(0xFFAFDFFF),
        unselectedItemColor: Colors.white,
        onTap: (navIndex) {
          setState(() {
            currentIndex = navIndex;
          });
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_rounded),
            activeIcon: Icon(Icons.info_rounded),
            label: 'How it works',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            activeIcon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
