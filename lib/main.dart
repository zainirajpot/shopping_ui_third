import 'package:flutter/material.dart';
import 'package:shopping_ui_third/new_Hera_Folder/hera_lock_page.dart';
import 'package:shopping_ui_third/new_Hera_Folder/hera_login_page.dart';
import 'package:shopping_ui_third/new_Hera_Folder/hera_sign_up_page.dart';

import 'package:shopping_ui_third/new_Hera_Folder/hera_ui_from_link.dart';
import 'package:shopping_ui_third/widgets/firstAppBarWidgets.dart';
import 'package:shopping_ui_third/widgets/list_view_containers.dart';
import 'package:shopping_ui_third/widgets/listofbrands.dart';
import 'package:shopping_ui_third/widgets/scndcontainerwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HeraLoginPage(),
     home: const HeraUi(),
    //  home:const SignUpPage(),
    //  home:const HeraLockPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(248, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 12,
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.06,
            ),
            firstAppBarWidgets(),
            SizedBox(
              height: height * 0.01,
            ),
            scndContainerWidget(),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [Colors.deepPurple, Colors.black38, Colors.grey],
              ).createShader(bounds),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Popular Brands',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            listOfBrands(),
            SizedBox(
              height: height * 0.03,
            ),
            Expanded(child: listViewConatiners()),
          ],
        ),
      ),
    );
  }
}
