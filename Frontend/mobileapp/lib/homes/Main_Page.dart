import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "MyKiddoNest",
            style: TextStyle(
              fontFamily: 'inter',
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          )),
          backgroundColor: Colors.white,
          leading: Container(
              child: IconButton(
            icon: Image.asset(
              'assets/icons/menu.png',
              height: 32,
              width: 32,
            ),
            onPressed: () {},
          )),
          actions: [
            Container(
              child: IconButton(
                  icon: Image.asset(
                    'assets/icons/inbox.png',
                    width: 30,
                    height: 30,
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType
              .fixed, // so that we can get more than 3 icons in this bottomNavBar
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/home.png', width: 23, height: 23),
              activeIcon: Image.asset('assets/icons/activeHome.png',
                  width: 23, height: 23), // Icon
              label: 'Home', // Label
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/timetable.png',
                  width: 23, height: 23),
              activeIcon: Image.asset('assets/icons/activeTimetable.png',
                  width: 23, height: 23), // Icon
              label: 'Time Table', // Label
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/evaluation.png',
                  width: 23, height: 23),
              activeIcon: Image.asset('assets/icons/activeEvaluation.png',
                  width: 23, height: 23), // Icon
              label: 'Evaluation', // Label
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/profile.png',
                  width: 23, height: 23),
              activeIcon: Image.asset('assets/icons/activeProfile.png',
                  width: 23, height: 23), // Icon
              label: 'Profile', // Label
            ),
          ],
          onTap: _onItemTapped, // Handle tap event here
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF91AB66),
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 8,
            fontFamily: 'Inter',
          ),
        ),
        body: Center(
          child: Text(
            'Selected Index: $_selectedIndex',
            style: TextStyle(fontSize: 24),
          ),
        ));
  }
}
