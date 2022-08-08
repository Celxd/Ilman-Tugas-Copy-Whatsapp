import 'package:flutter/material.dart';
import 'package:projectxi/main.dart';

import 'DummyData.dart';

Widget spaceBetween(){
  return Divider(height: 5.0, indent: 80.0, endIndent: 17.0);
}

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
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
               ListTile(
                 leading: CircleAvatar(
                     radius: 26.0,
                     backgroundColor: Colors.grey,
                     backgroundImage: NetworkImage(myimg),
                     child: Container(
                       alignment: Alignment.bottomRight,
                       child: Icon(Icons.add_circle,
                         size: 22.0,
                         color: Color(0xFF25D366),
                       ),
                     ),
                  ),

                  title: Text('My Status',
                     style: TextStyle(
                       fontSize: 17.0,
                     ),
                  ),

                  subtitle: Text('Tap to add status update',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
               ),

               SizedBox(
                 height: 30.0,
                 child: Container(
                   alignment: Alignment.centerLeft,
                   color: Colors.grey[200],
                   child: Text(
                     '    Recent updates',
                      style: TextStyle(
                        color: Colors.black87,
                     )
                    ),
                  ),
                ),

               DummyData(
                 name: 'Mama Yae',
                 time: '24 minutes ago',
                 netimage: yaeMiko,
               ),
               spaceBetween(),

               DummyData(
                 name: 'Marin Kitagawa',
                 time: '57 minutes ago',
                 netimage: marinKitagawa,
               ),

               SizedBox(
                 height: 30.0,
                 child: Container(
                   alignment: Alignment.centerLeft,
                   color: Colors.grey[200],
                   child: Text(
                     '    Viewed updates',
                      style: TextStyle(
                        color: Colors.black87,
                     )
                    ),
                  ),
                ),

               DummyData(
                 name: 'Mbak Shikimori',
                 time: '59 minutes ago',
                 netimage: shikimori,
               ),
               spaceBetween(), 
               
               DummyData(
                 name: 'Tante Raiden',
                 time: 'Yesterday, 23:44',
                 netimage: raidenShogun,
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Adek',
                 time: 'Yesterday, 22:43',
                 netimage: hutaou,
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Nakano Yotsuba',
                 time: 'Yesterday, 21:10',
                 netimage: nakanoYotsuba,
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Inoue Takina',
                 time: 'Yesterday, 20:16',
                 netimage: inoueTakina,
               ),
               spaceBetween(),
               
               DummyData(
                 name: 'Siesta',
                 time: 'Yesterday, 19:37',
                 netimage: siesta,
               ),
             ],
          ),

          floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF25D366),
          child: Icon(Icons.camera_alt)
         )
        ),
      );
  }
}
