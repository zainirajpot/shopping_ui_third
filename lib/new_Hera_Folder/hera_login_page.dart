import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HeraLoginPage extends StatelessWidget {
  const HeraLoginPage({super.key});

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
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Welcome Back to Hera',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Email',
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
                      prefixIcon: Icon(Icons.email,color: Colors.grey,),
                      border: InputBorder.none,
                      hintText: 'Email',
                      //  label: Text(
                      //   'Email',
                      //   style: TextStyle(color: Colors.amber),
                      // ),

                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                        left: 14.0,
                        bottom: 6.0,
                        top: 8.0,
                      ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.red),
                      //   borderRadius: BorderRadius.circular(10.0),
                      // ),
                      // enabledBorder: UnderlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.amber),
                      //   borderRadius: BorderRadius.circular(10.0),
                      // ),
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
                        Icons.lock,color:Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,color: Colors.grey,
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
                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.red),
                      //   borderRadius: BorderRadius.circular(10.0),
                      // ),
                      // enabledBorder: UnderlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.amber),
                      //   borderRadius: BorderRadius.circular(10.0),
                      // ),
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
                  const Text(
                    'Forgett Password',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        'New to Hera ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          // decoration: TextDecoration.underline,
                          // decorationColor: Colors.red, // optional
                          // decorationThickness: 2, // optional
                          // decorationStyle: TextDecorationStyle.dashed,
                        ),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white, // optional
                          //decorationThickness: 9, // optional
                          decorationStyle: TextDecorationStyle.dashed,
                        ),
                      ),
                    ],
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
