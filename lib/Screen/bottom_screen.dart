import 'package:flutter/material.dart';
import 'package:test_app/Screen/category/category_screen.dart';
import 'package:test_app/Screen/home/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentindex = 0;
  final List<Widget> screens = [
    HomeScreen(),
    const CategoryScreen(),
    const Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentindex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentindex,
        onTap: (current) => setState(() {
          currentindex = current;
        }),
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: "Home",
              backgroundColor: Theme.of(context).primaryColor),
          BottomNavigationBarItem(
              icon: const Icon(Icons.category),
              label: "Categories",
              backgroundColor: Theme.of(context).primaryColor),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: "Profile",
              backgroundColor: Theme.of(context).primaryColor),
        ],
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white54,
      ),
    );
  }
}
