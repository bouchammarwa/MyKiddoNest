import 'package:flutter/material.dart';

class KidInfoField extends StatefulWidget {
  String _textHintf;
  String _labelf;

  KidInfoField({
    Key? key,
    required String textHintf,
    required String labelf,
  })  : _textHintf = textHintf,
        _labelf = labelf,
        super(key: key);
  @override
  _KidInfoFieldState createState() => _KidInfoFieldState();
}

class _KidInfoFieldState extends State<KidInfoField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\t\t' + widget._labelf,
            style: TextStyle(
              fontFamily: 'intel',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                hintText: widget._textHintf,
                hintStyle: TextStyle(
                    fontFamily: 'roboto mono ',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF4B4949)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF8BC62A)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
