import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  
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
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(132, 85, 93, 101),
                    Color.fromARGB(108, 149, 88, 19)
                  ],
                ),
                borderRadius: BorderRadius.circular(70),
                // color: const Color.fromARGB(135, 0, 0, 0),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Welcome to Hera',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'First name',
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
                        Icons.person,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      hintText: 'Name',
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                        left: 14.0,
                        bottom: 6.0,
                        top: 8.0,
                      ),
                    ),
                  ),
                  const Text(
                    'Last name',
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
                      border: InputBorder.none,
                      hintText: 'Last name',
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                        left: 14.0,
                        bottom: 6.0,
                        top: 8.0,
                      ),
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
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      hintText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                        left: 14.0,
                        bottom: 6.0,
                        top: 8.0,
                      ),
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
                  const Text(
                    'Confirm Password',
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
                  const Text(
                    'Role',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const ExpansionTile(
                    title: Text('Select Role'),
                    leading: Icon(Icons.person_3_rounded),
                    backgroundColor: Colors.white,
                    collapsedBackgroundColor: Colors.white,
                    children: [
                      
                    ],
                  ),
                  // const TextField(
                  //   autofocus: false,
                  //   cursorColor: Colors.black,
                  //   style: TextStyle(
                  //     fontSize: 15.0,
                  //     color: Colors.black,
                  //   ),
                  //   decoration: InputDecoration(
                  //     prefixIcon: Icon(
                  //       Icons.calendar_month,
                  //       color: Colors.grey,
                  //     ),
                  //     border: InputBorder.none,
                  //     hintText: 'Select Date',
                  //     filled: true,
                  //     fillColor: Colors.white,
                  //     contentPadding: EdgeInsets.only(
                  //       left: 14.0,
                  //       bottom: 6.0,
                  //       top: 8.0,
                  //     ),
                  //   ),
                  // ),
                  const Text(
                    'Date of birth',
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
                        Icons.calendar_today,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      hintText: 'Date of birth',
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
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        'Already have an account ?',
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
                        'Login',
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
