import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vodafone_gate/constants.dart';

class TextInputWidget extends StatefulWidget {

  TextInputWidget({@required this.displayText,
        this.hideText = false,
        this.keyboardType = TextInputType.text, this.errorText, this.validation});

   String displayText;
   bool hideText;
   TextInputType keyboardType;
   String errorText;
   Function validation;



  @override
  _TextInputWidgetState createState() => _TextInputWidgetState(displayText: displayText, hideText: hideText, keyboardType: keyboardType, errorText: errorText, validation: validation);
}

class _TextInputWidgetState extends State<TextInputWidget> {

  _TextInputWidgetState({@required this.displayText,
    this.hideText = false,
    this.keyboardType = TextInputType.text, this.errorText, this.validation});
  final TextEditingController text = new TextEditingController();

  String displayText;
  bool hideText;
  TextInputType keyboardType;
  String errorText;

  int numberOfCharacters;
  bool validate = true;

  Function validation;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        child: TextField(
          controller: text,
          obscureText: hideText,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            errorText: validate?null: errorText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
            labelText: displayText,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black26,
            ),
          ),
        ),
      ),
    );
  }
}


class WideButton extends StatelessWidget {
  @override
  WideButton({this.color = Colors.black12, @required this.text, this.onPressed});

  final color;
  final String text;
  final Function onPressed;

  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        child: RaisedButton(
          color: color,
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Text(text),
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      ),
    );
  }
}






class CarouselBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: kScreenWidth(context),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/splash_image.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}