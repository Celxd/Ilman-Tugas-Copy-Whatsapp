import 'package:flutter/material.dart';

import 'CHATS/ChatsScreen.dart';
import 'STATUS/StatusScreen.dart';
import 'CALLS/CallsScreen.dart';

// ADDED IMAGES
String myimg = 'assets/image/PP.jpg';
String nakanoIchika = 'assets/image/Nakano Ichika.jpg';
String nakanoItsuki = 'assets/image/Nakano Itsuki.jpg';
String nakanoMiku = 'assets/image/Nakano Miku.jpg';
String nakanoNino = 'assets/image/Nakano Nino.jpg';
String nakanoYotsuba = 'assets/image/Nakano Yotsuba.jpg';
String inoueTakina = 'assets/image/Inoue Takina.jpg';
String komisan = 'assets/image/Komi san.jpg';
String marinKitagawa = 'assets/image/Marin Kitagawa.jpg';
String hutaou = 'assets/image/Hu Tao.jpg';
String yaeMiko = 'assets/image/Yae Miko.jpg';
String shikimori = 'assets/image/Shikimori.jpg';
String raidenShogun ='assets/image/Raiden Shogun.jpg';
String siesta = 'assets/image/Siesta.jpg';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          accentColor: Color(0xFF075E54),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF075E54),
            title: Text(
              'WhatsApp',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            actions: <Widget>[
              Icon(Icons.search),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
              ),
              Icon(Icons.more_vert),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
              ),
            ],
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text(
                    'CHATS',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'STATUS',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'PANGGILAN',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Center(
                child: Text('Anggap Saja Ini Mode Kamera'),
              ),
              ChatsScreen(),
              StatusScreen(),
              CallsScreen(),
            ],
          ),
        ));
  }
}
