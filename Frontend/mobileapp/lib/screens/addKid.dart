import 'package:flutter/material.dart';
import 'package:mobileapp/components/kifInfoField.dart';

class AddKid extends StatefulWidget {
  @override
  _AddKidState createState() => _AddKidState();
}

class _AddKidState extends State<AddKid> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 40),
            ),
            Center(
              child: Stack(children: [
                CircleAvatar(
                  radius: 80, // Adjust the size as needed
                  backgroundImage:
                      AssetImage('assets/kid.jpg'), // Provide the image path
                ),
                Positioned(
                  bottom: 10,
                  right: 4,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add_a_photo_rounded,
                      color: Color(0xFF8BC62A),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Add my kid',
                style: TextStyle(
                    fontFamily: 'roboto mono',
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
            ),
            KidInfoField(textHintf: 'First name', labelf: 'First name'),
            Container(
              margin: EdgeInsets.only(top: 15),
            ),
            KidInfoField(textHintf: 'Last  name', labelf: 'Last name'),
            Container(
              margin: EdgeInsets.only(top: 20),
            ),
            KidInfoField(textHintf: 'DD/MM/YYYY', labelf: 'Date of birth'),
            Container(
              margin: EdgeInsets.only(top: 20),
            ),
            KidInfoField(
                textHintf: 'Relationship to child', labelf: 'Relationship ..'),
            Container(
              margin: EdgeInsets.only(top: 20),
            ),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Adjust the radius as needed
                  ),
                  checkColor: Color(0xFF8BC62A),
                ),
              ],
            )
          ]),
        ));
  }
}
