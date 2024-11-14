import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:ajalee_app/screens/dashbord.screen.dart';
import 'package:ajalee_app/widgets/rent%20screen%20widgets/car_feature_dispaly.widget.dart';
import 'package:ajalee_app/widgets/rent%20screen%20widgets/company_badge.widget.dart';
import 'package:ajalee_app/widgets/rent%20screen%20widgets/customer_review.widget.dart';
import 'package:ajalee_app/widgets/rent%20screen%20widgets/vechile_for_rent.widget.dart';
import 'package:ajalee_app/widgets/rent%20screen%20widgets/car_info.widget.dart';
import 'package:flutter/material.dart';

class RentScreen extends StatelessWidget {
  const RentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 46, 128, 195),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.circle_rounded,
              size: 12,
            ),
            label: 'label 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.circle_rounded,
              size: 12,
            ),
            label: 'label 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.circle_rounded,
              size: 12,
            ),
            label: 'label 3',
          ),
        ],
      ),
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 27, 90, 142),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 50, right: 30, left: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashbordScreen()),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Search Results",
                  style:
                      CustomColors.headingStyle.copyWith(color: Colors.white),
                ),
                const Icon(
                  Icons.filter_alt_rounded,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  'Results for:',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'MCT Int airport-Thu,Nov 10',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 31, 90, 139)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1, // Change this to the actual number of items
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      CarInfoHeader(
                        carName: "Toyota Prado 2021",
                        price: "15.250",
                        carType: "4X4 cars",
                        rentalRate: "OMR day",
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 7),
                      ),
                      Row(
                        children: [
                          // First container with image and customer review
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                VehicleForRent(),

                                const SizedBox(
                                    height:
                                        5), // Space between image and review
                                CustomerReview(
                                  rating: 4.2,
                                  reviewCount: 5000,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const CompanyBadge(
                                  text: "company",
                                  icon: Icons.login,
                                  borderColor: Colors.grey,
                                  backgroundColor:
                                      const Color.fromARGB(255, 196, 159, 202),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                              width: 27), // Spacer between containers

                          // Second container
                          Expanded(
                            flex: 5,
                            child: CarFeatureDisplay(
                              seats: 6,
                              insurance: true,
                              ac: true,
                              fuelType: 'Like for like',
                              speed: '150/km/day',
                              onRent: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
