import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_ui_third/Modeil_List/model.dart';

class CartPageFirst extends StatelessWidget {
  
  final ProductModel product;
 final String? imagePath;
  final String? priceTag;
  final String ?quantity;
  const CartPageFirst({Key? key, required this.product, this.imagePath, this.priceTag, this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Details'),
      ),
      body: Column(
        children: [
          // Display the image here
         // Image.asset(product.image),
          //Image.network(product.imageUrl),
          // Display the quantity and favorite rating bar here
          //Text('Quantity: ${product.count ?? 0}'),
           Text('Quantity: $quantity'),
        // Text('Rating: ${product.rating ?? 0}'),
          Text('Price: $priceTag'),
           RatingBar.builder(
            initialRating: product.rating ?? 0,
            minRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 20,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {},
          ), // Assuming price is a double or int
          //Text('Image: ${imagePath ?? ''}'),
          Image.asset(imagePath!)
          // Display other details about the product
          // ...
        ],
      ),
    );
  }
}


