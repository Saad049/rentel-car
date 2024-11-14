import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:ajalee_app/screens/book_car.screen.dart';
import 'package:ajalee_app/widgets/rent%20car%20%20details%20wigets/profile_image_header.widget.dart';
import 'package:flutter/material.dart';
import 'package:ajalee_app/widgets/rent%20car%20%20details%20wigets/car_detail_header.widget.dart';
import 'package:ajalee_app/widgets/rent%20car%20%20details%20wigets/car_detaill_app_bar.widget.dart';
import 'package:ajalee_app/widgets/rent%20car%20%20details%20wigets/car_price_display.widget.dart';
import 'package:ajalee_app/widgets/rent%20car%20%20details%20wigets/car_specification.widget.dart';
import 'package:ajalee_app/widgets/rent%20car%20%20details%20wigets/customer_reviews.wiget.dart';
import 'package:ajalee_app/widgets/rent%20car%20%20details%20wigets/other_instruction.widget.dart';

class RentCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CarDetailsBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CarDEtailHeader(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 12),
              child: CarTypeHeader(),
            ),
            SizedBox(
              height: 10,
            ),
            CarPriceDispaly(
              imagePath: 'assets/prado.png', // Path to your image asset
              carRating: '4.2', // Car rating
              price: 'RO 15.500', // Price
              priceUnit: 'per day', // Price unit
            ),
            SizedBox(
              height: 20,
            ),
            const Divider(),
            CarSpecificationHeader(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SeatInsuranceRow(),
                  const SizedBox(height: 10),
                  AcFuelRow(),
                  const SizedBox(height: 10),
                  GearDoorInfoRow(),
                  const SizedBox(height: 10),
                  SpeedColorInfoRow(),
                ],
              ),
            ),
            Divider(),
            OtherInstructionsHeader(),
            FuelPolicyInfo(),
            Divider(),
            IdentityVerificationInfo(),
            Divider(),
            CustomerRates(),
            CustomerReview(),
            Row(
              children: [
                ProfileImageHeader(
                  profileImage: 'assets/saad.png',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 55,
              ),
              child: Row(
                children: [
                  Row(
                    children: List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,

                        color: Colors.amber, // Change color of the third star
                        size: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Nov 12 2021',
                      style: CustomColors.customerReviewParagraph),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'The car was good and help me a lot in my trips.the office guys were friendly and helpful,they were very understanable and hospitallity was superab',
                style:
                    CustomColors.customerReviewParagraph.copyWith(fontSize: 14),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ProfileImageHeader(
                  profileImage: 'assets/saad.png',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 60,
              ),
              child: Row(
                children: [
                  Row(
                    children: List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,
                        color: index == 4
                            ? Colors.grey
                            : Colors.amber, // Change color of the third star
                        size: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Nov 12 2021',
                      style: CustomColors.customerReviewParagraph),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'The car was good and help me a lot in my trips.the office guys were friendly and helpful,they were very understanable and hospitallity was superab',
                style:
                    CustomColors.customerReviewParagraph.copyWith(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent,
        child: SizedBox(
          height: 60,
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookCar(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.directions_car, // Your chosen icon
                    color: Colors.white,
                    size: 24,
                  ),
                  SizedBox(width: 8), // Space between icon and text
                  Text(
                    'Rent this Car',
                    style: CustomColors.buttonTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
