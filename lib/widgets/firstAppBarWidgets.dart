import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget firstAppBarWidgets() => Row(
      children: [
        Container(
          height: 50,
          width: 40,
          child: Image.asset(
            'images/imagef.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              'WellCome',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Text(
              'Montha Alex',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 150),
          child: Icon(Icons.notification_add),
        ),
      ],
    );
