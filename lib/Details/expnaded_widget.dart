import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          expandedAlignment: FractionalOffset.topLeft,
          childrenPadding: const EdgeInsets.all(10),
          iconColor: Colors.black,
          title: const Text(
            'About Nike',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          children: const [
            Text(
              'What is NIKE?',
              style: TextStyle(color: Colors.black54),
            ),
            Text(
              'Find A Store',
              style: TextStyle(color: Colors.black54),
            ),
            Text(
              'Customer Reviews',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
        ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          expandedAlignment: FractionalOffset.topLeft,
          childrenPadding: EdgeInsets.all(10),
          iconColor: Colors.black,
          // expandedAlignment: FractionalOffset.topLeft,
          // childrenPadding: EdgeInsets.all(9),
          title: const Text(
            'Help',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          children: const [
            Text(
              'Order Status',
              style: TextStyle(color: Colors.black54),
            ),
            Text(
              'Shipping & Delivery',
              style: TextStyle(color: Colors.black54),
            ),
            Text(
              'Return & Exchange Policy',
              style: TextStyle(color: Colors.black54),
            ),
            Text(
              'Terms & Condition',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ],
    );
  }
}
