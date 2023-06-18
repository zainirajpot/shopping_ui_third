import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget scndContainerWidget() => Container(
      child: Stack(
        children: [
          Container(
            height: 220,
            width: 310,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: [Colors.lightBlue, Colors.deepPurple.shade700],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200, top: 10),
            child: Container(
              height: 250,
              width: 150,
              child: Image.asset(
                'images/shoee.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const Text(
                  'Make Foot',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700),
                ),
               const Text(
                  'Awsome With Nice Air',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                ),
               const SizedBox(
                  height: 54,
                ),
                GestureDetector(onTap: () {
                  
                },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightBlue,
                    ),
                    height: 40,
                    width: 150,
                    child:  Align(
                      alignment: Alignment.center,
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Explore Nike',
                            style: TextStyle(color: Colors.white),
                          ),
                          Image.asset('images/nik.png',
                          )
                         
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
