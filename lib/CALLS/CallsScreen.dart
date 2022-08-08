import 'package:flutter/material.dart';
import 'package:projectxi/main.dart';

import 'DummyData.dart';

Widget spaceBetween(){
  return Divider(height: 5.0, indent: 80.0, endIndent: 17.0);
}

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Color(0xFF075E54),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body:  ListView(
            padding: EdgeInsets.only(bottom: 80.0, top: 0.0),
            addRepaintBoundaries: true,
             children: <Widget>[
              DummyData(
                 name: 'Inoue Takina',
                 time: 'Yesterday, 18:49',
                 netimage: inoueTakina,
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Tante Raiden',
                 time: 'March 24, 18:26',
                 netimage: raidenShogun,
               ),
               spaceBetween(),

               DummyData(
                 name: 'Dabboo Ratnani',
                 time: 'March 13, 13:26',
                 netimage: siesta,
               ),  

               DummyData(
                 name: 'Nakano Yotsuba',
                 time: 'March 9, 21:16',
                 netimage: nakanoYotsuba,
               ),
               spaceBetween(),

               DummyData(
                 name: 'Adek',
                 time: 'March 5, 14:06',
                 netimage: hutaou,
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Mama Yae',
                 time: 'February 24, 11:51',
                 netimage: yaeMiko,
               ),
               spaceBetween(),

               DummyData(
                 name: 'Marin Kitagawa',
                 time: 'February 22, 21:02',
                 netimage: marinKitagawa,
               ),
             ],
          ),

          floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF25D366),
          child: Icon(Icons.add_call),
         )
        ),
      );
  }
}
