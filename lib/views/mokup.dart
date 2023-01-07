import 'dart:async';

import 'package:flutter/material.dart';
import 'login_page.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen>{
  final int _splashtime = 5;
  @override
  void initState() {
    Future.delayed(Duration(seconds: _splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context){
            return const LoginForm();
          }));
    });
    super.initState();
  }
  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, loginRoute);
  }
  loginRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const LoginForm()
    ));
  }
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              alignment: Alignment.center,
              child:Image.asset("assets/images/mokup.jpg")
          ),
        ],
      ),
    );
  }
}