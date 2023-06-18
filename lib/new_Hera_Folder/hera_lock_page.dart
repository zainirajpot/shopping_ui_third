import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HeraLockPage extends StatelessWidget {
  const HeraLockPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'images/airplane2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              height: height * 0.9,
              width: width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: const Color.fromARGB(135, 0, 0, 0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('images/lockp.png'),
                  const Text(
                    'Welcome Back to Hera',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const TextField(
                    autofocus: false,
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                        left: 14.0,
                        bottom: 6.0,
                        top: 8.0,
                      ),
                    ),
                  ),
                  MaterialButton(
                    height: height * 0.07,
                    minWidth: width * 0.7,
                    onPressed: () {},
                    color: Colors.orange,
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
