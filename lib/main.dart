import 'package:flutter/material.dart';
import 'WaterPage.dart';
import 'Breath.dart';
import 'Walk.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int pcCount = 0; // Sayaç değişkeni
  static const int maxPcCount = 20; // Maksimum PC sayısı
  bool waterPageVisited = false;
  bool walkPageVisited = false;
  bool breathPageVisited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 74, 115, 147),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
              color: Colors.black,
              iconSize: 40,
            ),
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/logo.jpeg',
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 200, //
                width: 200,
                child: CircularProgressIndicator(
                  value: pcCount / maxPcCount,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color.fromARGB(255, 0, 255, 170),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/dollar-symbol.png',
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '$pcCount',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20), // Column ile arasındaki boşluk
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WaterPage()), // WaterPage'e git
                  ).then((_) {
                    setState(() {
                      waterPageVisited = true;
                    });
                  });
                },
                child: Container(
                  height: 70,
                  width: 250,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 74, 115, 147),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Drink Water',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: waterPageVisited
                    ? () {
                        setState(() {
                          pcCount++;
                        });
                      }
                    : null,
                child: Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: waterPageVisited
                        ? const Color.fromARGB(255, 74, 115, 147)
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Click',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Walk()), // Walk Page'e git
                  ).then((_) {
                    setState(() {
                      walkPageVisited = true;
                    });
                  });
                },
                child: Container(
                  height: 70,
                  width: 250,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 74, 115, 147),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Walk',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: walkPageVisited
                    ? () {
                        setState(() {
                          pcCount++;
                        });
                      }
                    : null,
                child: Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: walkPageVisited
                        ? const Color.fromARGB(255, 74, 115, 147)
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Click',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Breath()), // Breath Page'e git
                  ).then((_) {
                    setState(() {
                      breathPageVisited = true;
                    });
                  });
                },
                child: Container(
                  height: 70,
                  width: 250,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 74, 115, 147),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Breathing Exercise',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: breathPageVisited
                    ? () {
                        setState(() {
                          pcCount++;
                        });
                      }
                    : null,
                child: Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: breathPageVisited
                        ? const Color.fromARGB(255, 74, 115, 147)
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Click',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 74, 115, 147),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home_filled),
              onPressed: () {},
              color: Colors.black,
              iconSize: 40,
            ),
            IconButton(
              icon: const Icon(Icons.attach_money_rounded),
              onPressed: () {},
              color: Colors.black,
              iconSize: 40,
            ),
            IconButton(
              icon: const Icon(Icons.manage_accounts),
              onPressed: () {},
              color: Colors.black,
              iconSize: 40,
            ),
            IconButton(
              icon: const Icon(Icons.mark_unread_chat_alt_outlined),
              onPressed: () {},
              color: Colors.black,
              iconSize: 40,
            ),
          ],
        ),
      ),
    );
  }
}
