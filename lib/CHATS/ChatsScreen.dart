import 'package:flutter/material.dart';
import 'package:projectxi/main.dart';

import 'DummyData.dart';

Widget spaceBetween(){
  return Divider(height: 5.0, indent: 80.0, endIndent: 17.0);
}

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
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
             children: <Widget>[
               DummyData(
                 name: 'Nakano Ichika',
                 message: 'Manzz, Baru Ngerjain Tugas?',
                 time: '22:55',
                 netimage: nakanoIchika,
               ),
               spaceBetween(),
               DummyData(
                 name: 'Nakano Itsuki',
                 message: 'Tadi Dah Di tanyai...',
                 time: '18:25',
                 netimage: nakanoItsuki,
               ),
               spaceBetween(),
               DummyData(
                 name: 'NakanoMiku',
                 message: 'Halo Manzz, Kapan Halu...',
                 time: '14:20',
                 netimage: nakanoMiku,
               ),
               spaceBetween(),
               DummyData(
                 name: 'Nakano Nino',
                 message: 'Jadi Ikut Less?',
                 time: '09:45',
                 netimage: nakanoNino,
               ),
               spaceBetween(),
               DummyData(
                 name: 'Nakano Yotsuba',
                 message: 'Kapan kapan mampir lagi ya',
                 time: '09:16',
                 netimage: nakanoYotsuba,
               ),
               spaceBetween(),
               DummyData(
                 name: 'inoue Takina',
                 message: 'Ada misi apa hari ini?',
                 time: '08:00',
                 netimage: inoueTakina,
               ),
               spaceBetween(),
               DummyData(
                 name: 'Mbak Komi',
                 message: 'Kapan ke jepang lagi?',
                 time: 'Yesterday',
                 netimage: komisan,
               ),
               spaceBetween(),
               DummyData(
                 name: 'Marin Kitagawa',
                 message: 'Jangan lupa pesanan caju cosplay ku yaa',
                 time: '3/26/20',
                 netimage: marinKitagawa,
               ),
               spaceBetween(),
               DummyData(
                 name: 'Adek',
                 message: 'Kakak, beliin aku jajan ya kalo dah mau pulang hehe',
                 time: '3/24/20',
                 netimage: hutaou,
               ),
               spaceBetween(),
               DummyData(
                 name: 'Mama Yae',
                 message: 'Kak mamah tolong beliin beras yaa',
                 time: '3/20/20',
                 netimage: yaeMiko,
               ),
               spaceBetween(),
               DummyData(
                 name: 'Mbak Shikimori',
                 message: 'besok aku mau mampir, mau pinjam pc mu',
                 time: '3/19/20',
                 netimage: shikimori,
               ),
               spaceBetween(),
               DummyData(
                 name: 'tante Raiden',
                 message: 'Kak manzz kamu dimana, bisa jemput tante?',
                 time: '3/7/20',
                 netimage: raidenShogun,
               ),
               spaceBetween(),
               DummyData(
                 name: 'Siesta',
                 message: 'makasih ya kemarin mau fotoin aku hehe?',
                 time: '3/5/20',
                 netimage: siesta,
               ),
             ],
          ),

          floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF25D366),
          child: Icon(Icons.message)
         )
        ),
      );
  }
}
