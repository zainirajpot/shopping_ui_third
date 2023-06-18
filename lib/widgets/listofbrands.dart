import 'package:flutter/material.dart';

Widget listOfBrands() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.white70, Colors.blue],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
            borderRadius: BorderRadius.circular(22),
          ),
          height: 40,
          width: 80,
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'Nike',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.white70, Colors.blue],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
            borderRadius: BorderRadius.circular(22),
          ),
          height: 40,
          width: 80,
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'Adidas',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.white70, Colors.blue],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
            borderRadius: BorderRadius.circular(22),
          ),
          height: 40,
          width: 80,
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'Gucci',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.white70, Colors.blue],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
            borderRadius: BorderRadius.circular(22),
          ),
          height: 40,
          width: 80,
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'Zara',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
