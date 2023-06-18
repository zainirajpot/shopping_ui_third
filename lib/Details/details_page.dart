import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:shopping_ui_third/Cart_Details/cart_page_first.dart';
import 'package:shopping_ui_third/Details/quantity_favorit.dart';
import 'package:shopping_ui_third/Details/rating_size.dart';
import 'package:shopping_ui_third/Details/expnaded_widget.dart';
import 'package:shopping_ui_third/Modeil_List/model.dart';
//import 'package:flutter_icons/flutter_icons.dart';

class DetailsPage extends StatefulWidget {
  final ProductModel product;
  const DetailsPage({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  // bool isFavorite = false;
  // int? selectedSizeIndex; // Change the type to int?

  // List<String> sizes = ['46', '47', '48', '49'];
  int selectedIndex = 0;
  String? displyImage;
  List<Color> colors = [
    Color.fromARGB(255, 44, 112, 46),
    Colors.black,
    Colors.amber,
    Colors.red,
  ];
  @override
  void initState() {
    displyImage = widget.product.image![0];
    super.initState();
  }

  Map<Color, String> createColorImageMap(
      List<Color> colors, List<String> images) {
    // Create an empty map
    Map<Color, String> abc = {};

    // Ensure that the number of colors matches the number of images
    if (colors.length != images.length) {
      throw ArgumentError(
          'The number of colors must match the number of images.');
    }

    // Add images to the map with respect to colors
    for (int i = 0; i < colors.length; i++) {
      abc[colors[i]] = images[i];
    }
    log('This is  function value $abc');
    return abc;
  }

  @override
  Widget build(BuildContext context) {
    log('These are product images ${widget.product.image}');
    log('This is product object ${widget.product}');

    final colorImageMap = createColorImageMap(colors, widget.product.image!);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Navigation Drawer',
          ),
          backgroundColor: Colors.blue),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Page 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Page 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: height * 0.4,
                  width: width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.lightBlue, Colors.deepPurple.shade700],
                        // Colors.lightBlue, Colors.deepPurple.shade700
                        begin: Alignment.center,
                        end: Alignment.centerRight),
                  ),
                  child: InteractiveViewer(
                    minScale: 0.5,
                    maxScale: 2.6,
                    child: Image.asset(
                      displyImage!,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Available Colors',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: colors.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            final selectedColor = colors[index];
                            selectedIndex = colors.indexOf(colors[index]);
                            log('this is selected index = $selectedIndex');
                            log('this is color index $selectedColor');
                            displyImage = colorImageMap[selectedColor];
                            log('this is image path $displyImage');
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: CircleAvatar(
                            radius: 17,
                            backgroundColor: selectedIndex == index
                                ? colors[index]
                                : Colors.white,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 13,
                                backgroundColor: colors[index],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Price: \$${widget.product.price}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            RatingBarSize(
              product: ProductModel(),
            ),
            const SizedBox(
              height: 19,
            ),
            QuantityFavorite(
                product: ProductModel(),
                onAddToCart: () {
                  // function
                  //navigate to cart screen

                  if (widget.product != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartPageFirst(
                          product: widget.product,
                          imagePath: displyImage,
                          quantity: widget.product.count.toString(),
                          priceTag: widget.product.price.toString(),
                        ),
                      ),
                    );
                  }
                }),
            const SizedBox(
              height: 8,
            ),
            Column(
              children: [
                const ExpandedWidget(),
                // Text('Rating: ${product.rating?.toString() ?? ''}'),
                // BottomSheetExample(),
                // ExpansionTile(title:Text('saassass') ,children: [Icon(Icons.access_alarm),Icon(Icons.whatshot)]),

            const    Text(
                  'Connect With Us',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
                Row(
                  children:const [
                    Icon(Icons.youtube_searched_for),
                    //           flutter clean

                    Icon(Icons.youtube_searched_for),
                  ],
                ),
                Text('hdshgdjsfgf'),
                Text('hdshgdjsfgf'),
                Text('hdshgdjsfgf'),
                Text('hdshgdjsfgf'),
                Text('hdshgdjsfgf'),
                Text('hdshgdjsfgf'),
                Text('hdshgdjsfgf'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
