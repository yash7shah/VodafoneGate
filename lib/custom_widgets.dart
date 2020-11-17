import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vodafone_gate/constants.dart';

class TextInputWidget extends StatelessWidget {
  @override
  TextInputWidget(
      {@required this.displayText,
      this.hideText = false,
      this.keyboardType = TextInputType.text}
      );

  final String displayText;
  final bool hideText;
  final TextInputType keyboardType;

  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        child: TextField(
          obscureText: hideText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
            labelText: displayText,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black26,
            ),
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }
}

class WideButton extends StatelessWidget {
  @override
  WideButton({this.color = Colors.black12, @required this.text});

  final color;
  final String text;



  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        child: RaisedButton(
            color: color,

        padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Text(text),
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      ),
    );
  }
}
