import 'package:flutter/material.dart';
import 'package:mobileapp/screens/addKid.dart';
import '/screens/mainPage.dart';
import 'package:go_router/go_router.dart';

/*final router = GoRouter(
  initialLocation: '/',
  errorPageBuilder: (context, state) => MaterialPage(child: Text('Error')),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/homes/mainPage',
      builder: (context, state) =>
          MainPage(), // Assuming MainPage is the widget for your main home page
    )
  ],
);*/

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscured = true;

  void _toggleVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  bool _infoValid() {
    return true; // for the moment
  }

  bool _hasKid() {
    return false; // For simplicity.... later we'll set it using the database or firebase
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 126),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Image.asset(
                    'assets/icon.PNG',
                    width: 160,
                    height: 143,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 19),
                    child: Text(
                      'Nice to see you!',
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'Log in to continue',
                    style: TextStyle(
                      fontFamily: 'inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF565E6C),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 26,
                    top: 25,
                  ),
                  child: Text(
                    'Username',
                    style: TextStyle(
                      fontFamily: 'Roboto mono',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your user name',
                  hintStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFFBCC1CA),
                  ),
                  prefixIcon: Icon(Icons.person_outlined),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 11),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Color(0xFF9095A0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF8BC62A)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 26,
                    top: 25,
                  ),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontFamily: 'Roboto mono',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: _isObscured,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFFBCC1CA),
                  ),
                  prefixIcon: Icon(Icons.lock_outlined),
                  suffixIcon: IconButton(
                    icon: _isObscured
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                    onPressed: _toggleVisibility,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 11),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Color(0xFF9095A0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF8BC62A)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: 26,
                    top: 20,
                  ),
                  child: GestureDetector(
                    child: Text(
                      'Forget my password!',
                      style: TextStyle(
                        fontFamily: 'Roboto mono',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF4B4949),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: SizedBox(
                  width: 200,
                  height: 44,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF00ADE9)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (_infoValid() && _hasKid())
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()),
                        );
                      else if (_infoValid() && !_hasKid())
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddKid()),
                        );
                    },
                    child: Text(
                      'log in ',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
