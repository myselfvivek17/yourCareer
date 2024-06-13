import 'package:flutter/material.dart';
import 'package:yourcareer/screens/login_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 40.0),
          child: Image.asset(
            "assets/logo.png",
            fit: BoxFit.contain, // Adjust the fit as required
            width: 150, // Set the desired width
            height: 150, // Set the desired height
          ),
        ),
        Container(
          child: SpinKitFadingCube(
            color: const Color.fromARGB(255, 6, 81, 143),
            size: 30,
          ),
        )
      ],
    )));
  }
}
