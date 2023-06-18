import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_ui_third/Modeil_List/model.dart';

class RatingBarSize extends StatefulWidget {
  final ProductModel product;
  const RatingBarSize({Key? key, required this.product}) : super(key: key);

  @override
  State<RatingBarSize> createState() => _RatingBarSizeState();
}
 
class _RatingBarSizeState extends State<RatingBarSize> {
  // Change the type to int?

  int? selectedSizeIndex;
  List<String> sizes = ['46', '47', '48', '49'];
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: RatingBar.builder(
            initialRating: widget.product.rating?.toDouble() ?? 0.0,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 22,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              // print(rating);
            },
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Sneakers Size',
              style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 1),
            ),
            buildSizeContainer(0),
            buildSizeContainer(1),
            buildSizeContainer(2),
            buildSizeContainer(3),
          ],
        ),
      ],
    );
  }

  Widget buildSizeContainer(int index) {
    final isSelected = selectedSizeIndex == index;
    return GestureDetector(
      onTap: () {
        setState(
          () {
            selectedSizeIndex = isSelected ? null : index;
          },
        );
      },
      child: Container(
        height: 40,
        width: 40,
        color: isSelected ? Colors.red : Colors.white,
        child: Center(
          child: Text(
            sizes[index],
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
