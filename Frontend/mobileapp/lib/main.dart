import 'package:flutter/material.dart';
/*import 'screens/evaluation.dart';
import 'screens/homepage.dart';
import 'screens/kidForm.dart';
import 'screens/login.dart';
import 'screens/timeTable.dart';
import 'package:flutter/material.dart';*/

////////////// for the icons i have an issue with the assets , i'll set them asap

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //  bool userIsConnected = false;
    //  int nbKids = 0;
    return MaterialApp(
      title: 'MyKiddoNest',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            height: 30,
            width: 30,
            child: Image.asset('assets/icons/menu.png'),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 10.0), // Adjust the horizontal padding as needed
              child: Image.asset(
                'assets/icons/inbox.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType
              .fixed, // so that we can get more than 3 icons in this bottomNavBar
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize:
                      MainAxisSize.min, // Ensure the column takes minimum space
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Center the children vertically
                  children: [
                    Image.asset(
                      'assets/icons/home.png',
                      height: 27,
                      width: 27,
                    ),
                    SizedBox(
                        height:
                            4), // Add some spacing between the image and label
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ),
              label: '', // Set an empty label
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/timetable.png',
                      height: 27,
                      width: 27,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Time Table',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/evaluation.png',
                      height: 27,
                      width: 27,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Evaluation',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/profile.png',
                      height: 27,
                      width: 27,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            ),
          ],
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 8,
            fontFamily: 'Inter',
            color: Color(0xFF91AB66),
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 8,
            fontFamily: 'Inter',
          ),
        ),
      ),
    );
  }
}
