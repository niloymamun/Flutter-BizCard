import 'package:flutter/material.dart';

// This is Main Method
void main() {
  runApp(const MyApp());
}

// This is class
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text('Biz Card')),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(), // This is widget below code
            _getAvatar(), // This is Biz Card image this widget work mainly image show
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      margin: const EdgeInsets.all(50.0),
      width: 350.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(14.5),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person_outline,
                size: 30,
                color: Colors.blue,
              ),
              Text(
                'Al-Mamun',
                style: TextStyle(
                    fontSize: 20.9,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email_outlined,
                size: 30,
                color: Colors.white,
              ),
              Text(
                ' neloymamun06@gmail.com',
                style: TextStyle(
                    fontSize: 20.9,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.web_asset_outlined,
                size: 30,
                color: Colors.white,
              ),
              Text(
                ' www.flutter.com',
                style: TextStyle(
                    fontSize: 20.9,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }

// This is getAvatear  Widget
  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(
            color: Colors.redAccent,
            width: 1.2,
          ),
          image: const DecorationImage(
              image: AssetImage('assets/121.png'), fit: BoxFit.cover)),
    );
  }
}
