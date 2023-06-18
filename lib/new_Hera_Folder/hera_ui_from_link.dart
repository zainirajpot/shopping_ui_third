import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_ui_third/new_Hera_Folder/hera_login_page.dart';

class HeraUi extends StatefulWidget {
  const HeraUi({super.key});

  @override
  State<HeraUi> createState() => _HeraUiState();
}

class _HeraUiState extends State<HeraUi> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HeraLoginPage(),
      ),
    );
  }

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.bottomEnd,
                end: AlignmentDirectional.topStart,
                colors: [
                  Color.fromARGB(255, 59, 40, 11),
                  Color.fromARGB(255, 27, 9, 31),
                ],
              ),
            ),
            // child: Image.asset('images/l1.png',fit: BoxFit.contain,),
            child: Image.asset(
              'images/louts2.png',
            ),
          ),
          const Center(
            child: Text(
              'HERA',
              style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          Positioned(
            bottom: height * 0.3,
            left: width * 0.3,
            child: const Text(
              'Anywhere Awaits',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
