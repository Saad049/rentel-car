import 'package:flutter/material.dart';

class CarPriceDispaly extends StatelessWidget {
  final String imagePath; // Path to the car image
  final String carRating; // Rating of the car
  final String price; // Price of the car
  final String priceUnit; // Unit of the price (e.g., "per day")

  const CarPriceDispaly({
    Key? key,
    required this.imagePath,
    required this.carRating,
    required this.price,
    required this.priceUnit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.transparent.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          image: DecorationImage(
              image: AssetImage(imagePath), // Use the image path parameter
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54.withOpacity(0.5),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              carRating, // Use the rating parameter
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              price, // Use the price parameter
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Text(
                                priceUnit, // Use the price unit parameter
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
