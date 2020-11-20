import 'package:flutter/material.dart';
import 'package:vodafone_gate/create_password_screen.dart';
import 'constants.dart';
import 'custom_widgets.dart';

class OTPScreen extends StatelessWidget {
  static String id = 'otp_screen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/images/logo_image.png'),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'VodafoneGate',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Hello there!',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 28.0,
                  ),
                ),
                Text(
                  'Sign in to continue with VodafoneGate',
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: (2 * kScreenHeight(context)) / 3,
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
                      displayText: 'Enter OTP',
                      keyboardType: TextInputType.phone,
                    ),
                    WideButton(
                      text: 'SUBMIT',
                      color: Colors.lightBlueAccent,
                      onPressed: (){
                          Navigator.pushNamed(context, CreatePasswordScreen.id);
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Didn\'t receive OTP?'
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('RESEND OTP'),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
