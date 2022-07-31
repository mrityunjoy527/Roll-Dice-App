import 'dart:async';

import 'package:dice_app/homescreen.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(const Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  void dispose() {
    super.dispose();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: const [
                  Image(
                    alignment: Alignment.center,
                    image: AssetImage('images/playstore.png')),
                  Text('DICE ROLL', style: 
                    TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                      textAlign: TextAlign.center
                  ),
                ],
            ),
          ),
      ),
    );
  }
}
