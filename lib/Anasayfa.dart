import 'package:flutter/material.dart';
void main() => runApp (const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Anasayfa(),
    );
  }
}
class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  

  

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        actions:<Widget>[
          IconButton(
            icon:const Icon(Icons.home_filled),
            onPressed: (){},
            color:Colors.black,
            ),
          IconButton(
            icon:const Icon(Icons.attach_money_rounded),
            onPressed: (){},
            color:Colors.black,
            ), 
          IconButton(
            icon:const Icon(Icons.manage_accounts),
            onPressed: (){},
            color:Colors.black,
            ),
          IconButton(
            icon:const Icon(Icons.mark_unread_chat_alt_outlined),
            onPressed: (){},
            color:Colors.black,
            ),
          
        ],
      ),
    );
  }
}