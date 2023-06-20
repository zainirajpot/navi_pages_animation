import 'dart:async';

import 'package:flutter/material.dart';
import 'package:navi_pages_animation/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            child: const Image(
              image: AssetImage('images/whites.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.04, top: height * 0.1),
            child: const Text(
              'Plants',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 48, 95, 71),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.005,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.06, top: height * 0.2),
                child: const Text(
                  'Take care of your houseplants',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 48, 95, 71),
                  ),
                ),
              ),
              // IconButton(
              //   onPressed: () {},
              //   icon: const Icon(
              //     Icons.energy_savings_leaf,
              //     color: Color.fromARGB(255, 48, 95, 71),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
