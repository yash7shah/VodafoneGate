import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'constants.dart';
import 'custom_widgets.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'home_screen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/logo_image.png'),
            ),
            SizedBox(
              width: 5.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Welcome! ',
                    style: TextStyle(fontSize: 25.0),
                    //style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Alisha',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Text(
                  '221B Bakers street',
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: null,
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundButton(
                icon: Icons.card_travel_rounded,
                text: 'Guest',
              ),
              RoundButton(
                icon: Icons.delivery_dining,
                text: 'Delivery',
              ),
              RoundButton(
                icon: Icons.local_taxi_rounded,
                text: 'Taxi',
              ),
              RoundButton(
                icon: Icons.cleaning_services_rounded,
                text: 'Helper',
              ),
              RoundButton(
                icon: Icons.add,
                text: 'Add Flat',
              ),
            ],
          ),
          CarouselSlider(
            options: CarouselOptions(height: 200.0),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return CarouselBanner();
                },
              );
            }).toList(),
          ),
          Text(
            'Recent updates',
          ),
          CarouselSlider(
            options: CarouselOptions(

                height: 100.0,
              enableInfiniteScroll: false,
            ),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return CarouselBanner();
                },
              );
            }).toList(),
          ),
          Text(
            'Notice Board',
          ),
          Container(
            width: kScreenWidth(context),
            height: 100.0,
            child: ListView(
              children: [
                Container(
                  width: kScreenWidth(context),
                  height: 100.0,
                  margin: EdgeInsets.symmetric(vertical: 5.0),
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
                ),
                Container(
                  width: kScreenWidth(context),
                  height: 100.0,
                  margin: EdgeInsets.symmetric(vertical: 5.0),
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
                ),
                Container(
                  width: kScreenWidth(context),
                  height: 100.0,
                  margin: EdgeInsets.symmetric(vertical: 5.0),
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
                ),
              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlueAccent,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'Activities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'Notice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings_outlined),
            label: 'Emergency',
          ),
        ],
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  RoundButton({@required this.icon, @required this.text});

  final icon;
  final text;
  static const List colors = [
    Colors.redAccent,
    Colors.lightBlueAccent,
    Colors.greenAccent
  ];
  static final Random random = new Random();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundColor: colors[random.nextInt(3)],
          child: Icon(
            icon,
            size: 40.0,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(text),
      ],
    );
  }
}

