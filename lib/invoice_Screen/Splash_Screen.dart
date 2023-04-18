import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 2),
            SizedBox(height: 30),
            CircularProgressIndicator(color: Colors.black,), Spacer(flex: 1,),
            SizedBox(height: 0),
            Text("Invoice_app",
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

