import 'package:flutter/material.dart';

class WaterPage extends StatefulWidget {
  @override
  _WaterPageState createState() => _WaterPageState();
}

class _WaterPageState extends State<WaterPage> {
  int counter = 0; // Sayaç değişkeni

  @override
  Widget build(BuildContext context) {
    double progressValue = counter / 2000; // Sayaç değerini 0 ile 1 arasına normalize eder

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
                height: 200,
                width: 200,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey[300],
                  value: progressValue, // Değeri sayaç değerine göre ayarla
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color.fromARGB(255, 0, 255, 170),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/water.png',
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '$counter', // Sayaç değerini ekrana yazdır
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20), // Column ile arasındaki boşluk
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Kutuları ortala
            children: [ // Kenarlara göre hizalıyoruz
              GestureDetector(
                onTap: () {
                  setState(() {
                    counter += 150; // 150 birim artır
                    if (counter >= 2000) {
                      _showCompletionDialog();
                    }
                  });
                },
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 74, 115, 147),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/150.png', // Path to your image
                        height: 50, // Adjust height as needed
                        width: 50, // Adjust width as needed
                      ),
                      SizedBox(height: 10),
                      Text(
                        '150ml', // Text below the container
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    counter += 250; // 250 birim artır
                    if (counter >= 2000) {
                      _showCompletionDialog();
                    }
                  });
                },
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 74, 115, 147),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/250.png', // Path to your image
                        height: 50, // Adjust height as needed
                        width: 50, // Adjust width as needed
                      ),
                      SizedBox(height: 10),
                      Text(
                        '250ml', // Text below the container
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Kutuları ortala
            children: [ // Kenarlara göre hizalıyoruz
              GestureDetector(
                onTap: () {
                  setState(() {
                    counter += 500; // 500 birim artır
                    if (counter >= 2000) {
                      _showCompletionDialog();
                    }
                  });
                },
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 74, 115, 147),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/500.png', // Path to your image
                        height: 50, // Adjust height as needed
                        width: 50, // Adjust width as needed
                      ),
                      SizedBox(height: 10),
                      Text(
                        '500ml', // Text below the container
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    counter += 750; // 750 birim artır
                    if (counter >= 2000) {
                      _showCompletionDialog();
                    }
                  });
                },
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 74, 115, 147),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/750.png', // Path to your image
                        height: 50, // Adjust height as needed
                        width: 50, // Adjust width as needed
                      ),
                      SizedBox(height: 10),
                      Text(
                        '750ml', // Text below the container
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Congratulations!"),
          content:  Column(
            children: [
              Image.asset(
                'assets/tik.png', // Resminizin yolunu doğru şekilde belirtin
                height:200, // İstediğiniz yükseklik
                width:200, // İstediğiniz genişlik
              ),
              Text("Drinking 2 liters of water is completed."),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text("Okey"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
