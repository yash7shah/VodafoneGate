import 'package:flutter/material.dart';
import 'package:vodafone_gate/home_screen.dart';
import 'custom_widgets.dart';

class CreatePasswordScreen extends StatefulWidget {
  static String id = 'create_password_screen';


  @override
  _CreatePasswordScreenState createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {

  bool _value = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Create Password'),
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(35.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40.0,
            ),
            TextInputWidget(
              displayText: 'Your Name',
            ),
            TextInputWidget(
              displayText: 'Email ID',
            ),
            TextInputWidget(
              displayText: 'Password',
              hideText: true,
            ),
            TextInputWidget(
              displayText: 'Retype Password',
              hideText: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _value,
                  onChanged: (newValue){
                      setState(() {
                        _value = newValue;
                      });
                  },
                ),
                Text(
                    'I Agree to the'
                ),
                TextButton(
                  onPressed: () {
                  },
                  child: Text('TERMS & CONDITIONS'),
                ),
              ],
            ),
            WideButton(
              text: 'SUBMIT',
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),

          ],
        ),
      ),
    );
  }
}

