import 'package:flutter/material.dart';
import 'package:mobileapp/components/kidSelection.dart';
import 'package:mobileapp/models/kid.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  Kid? selectedKid;
  List<Kid> kids = [Kid('Mohammed', 'Boy'), Kid('Ilhem', 'Girl')];

  String? selectedMenuItem;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 50.0,
            ),
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon.PNG',
                        height: 55,
                        width: 55,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'MyKiddoNest',
                        style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Divider(
                    color: Colors.grey.shade400,
                    thickness: 1.5,
                    height: 20,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Column(
                    children: [
                      ExpansionTile(
                        backgroundColor: Colors.transparent,
                        title: Text(
                          'My Kids Profiles',
                          style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        leading: Container(
                          height: 40,
                          width: 40,
                          child: Image.asset('assets/icons/kids.png'),
                        ),
                        children: [
                          for (int i = 0; i < kids.length; i++)
                            KidSelection(
                              kid: kids[i],
                              isSelected: selectedKid == kids[i],
                              onTap: () {
                                setState(() {
                                  selectedKid = kids[i];
                                });
                                setSelectedMenuItem(null);
                              },
                            ),
                        ],
                        childrenPadding: EdgeInsets.only(left: 30),
                      ),
                      ListTile(
                        title: Text(
                          'Settings',
                          style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: selectedMenuItem == 'Settings'
                                ? Color(0xFF8BC62A)
                                : Colors.black,
                          ),
                        ),
                        leading: Container(
                          height: 40,
                          width: 40,
                          child: Icon(
                            Icons.settings_rounded,
                            color: selectedMenuItem == 'Settings'
                                ? Color(0xFF8BC62A)
                                : Colors.black,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedMenuItem = 'Settings';
                            selectedKid = null;
                          });
                        },
                      ),
                      ListTile(
                        title: Text(
                          'About us',
                          style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: selectedMenuItem == 'About us'
                                ? Color(0xFF8BC62A)
                                : Colors.black,
                          ),
                        ),
                        leading: Container(
                          height: 40,
                          width: 40,
                          child: Icon(
                            Icons.info_outline,
                            color: selectedMenuItem == 'About us'
                                ? Color(0xFF8BC62A)
                                : Colors.black,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedMenuItem = 'About us';
                            selectedKid = null;
                          });
                        },
                      ),
                      ListTile(
                        title: Text(
                          'Log out',
                          style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: selectedMenuItem == 'Log out'
                                ? Color(0xFF8BC62A)
                                : Colors.black,
                          ),
                        ),
                        leading: Container(
                          height: 40,
                          width: 40,
                          child: Icon(
                            Icons.logout_outlined,
                            color: selectedMenuItem == 'Log out'
                                ? Color(0xFF8BC62A)
                                : Colors.black,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedMenuItem = 'Log out';
                            selectedKid = null;
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void setSelectedMenuItem(String? item) {
    setState(() {
      selectedMenuItem = item;
    });
  }
}
