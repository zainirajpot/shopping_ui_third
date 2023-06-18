import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_ui_third/Cart_Details/cart_page_first.dart';
import 'package:shopping_ui_third/Modeil_List/model.dart';

class QuantityFavorite extends StatefulWidget {
  final ProductModel product;

  final VoidCallback? onAddToCart;

  const QuantityFavorite({
    Key? key,
    required this.product,
    required this.onAddToCart,
  }) : super(key: key);

  @override
  State<QuantityFavorite> createState() => _QuantityFavoriteState();
}

class _QuantityFavoriteState extends State<QuantityFavorite> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,

            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Quantity  :',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                height: height * 0.04,
                width: width * 0.4,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Set the color of the outline border
                    width: 1.0, // Set the width of the outline border
                  ),

                  // color: Colors.amber,
                  // borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.product.count =
                              (widget.product.count ?? 0) + 1;
                        });
                      },
                      child: Container(
                        height: height * 0.06,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors
                                .grey, // Set the color of the outline border
                            width: 1.0, // Set the width of the outline border
                          ),
                          //  color: Colors.lime,
                          //borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 25,
                        ),
                      ),
                    ),
                    Text(
                      '${widget.product.count ?? 0}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (widget.product.count != null &&
                              widget.product.count! > 1) {
                            widget.product.count =
                                (widget.product.count ?? 0) - 1;
                          } else {
                            widget.product.count = 0;
                          }
                        });
                      },
                      child: Container(
                        height: height * 0.06,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors
                                .grey, // Set the color of the outline border
                            width: 1.0, // Set the width of the outline border
                          ),
                          // color: Colors.blue,
                          // borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.remove,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: widget.onAddToCart,
                  child: Container(
                    height: height * 0.04,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Set the color of the outline border
                        //width: 1.0, // Set the width of the outline border
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'ADD TO CART',
                        style:
                            TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ),
                  )),
              Container(
                height: height * 0.06,
        
                width: width * 0.2,
                // color: Colors.amber,
                child: IconButton(
                  onPressed: () {
                    setState(
                      () {
                        isFavorite = !isFavorite;
                      },
                    );
                  },
                  icon: Icon(
                    Icons.favorite_border_sharp,
                    color: isFavorite ? Colors.red : Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
