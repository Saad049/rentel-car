import 'package:ajalee_app/screens/explore.screen.dart';

import 'package:ajalee_app/screens/rent.screen.dart';
import 'package:ajalee_app/screens/settings.screen.dart';
import 'package:ajalee_app/widgets/bottom%20nav%20bar%20menu/bottom_nav_bar_menu.widget.dart';
import 'package:flutter/material.dart';
import 'package:ajalee_app/widgets/dashbord%20screen%20widgets/Search_cars.widget.dart';
import 'package:ajalee_app/widgets/dashbord%20screen%20widgets/date_time_widget.dart';
import 'package:ajalee_app/widgets/dashbord%20screen%20widgets/location_input.widget.dart';
import 'package:ajalee_app/widgets/dashbord%20screen%20widgets/next_car_header.widget.dart';

import 'package:ajalee_app/widgets/dashbord%20screen%20widgets/welcome_header.widget.dart';

class DashbordScreen extends StatefulWidget {
  const DashbordScreen({super.key});

  @override
  State<DashbordScreen> createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  final TextEditingController locationController = TextEditingController();
  final TextEditingController fromDateController = TextEditingController();
  final TextEditingController fromTimeController = TextEditingController();
  final TextEditingController toDateController = TextEditingController();
  final TextEditingController toTimeController = TextEditingController();

  int _selectedIndex = 0; // To track the currently selected index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });

    // Define your route navigation here based on the index
    switch (index) {
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => RentScreen()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ExploreScreen()),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SettingsScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // The WelcomeHeader widget
            const Column(
              children: [
                WelcomeHeader(
                  profileImage: 'assets/saad.png',
                  name: "Welcome\nMohammad Saad!",
                  welcomeMessage: "Securely find and book\nyour rental ",
                ),
              ],
            ),

            // The overlay blank container with specific device width
            Positioned(
              top: 185,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LocationInput(controller: locationController),
                      const SizedBox(height: 8),
                      const SizedBox(
                        height: 20,
                        child: Text(
                          "Date & Time",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DateTImeInput(
                        fromDateController: fromDateController,
                        fromTimeController: fromTimeController,
                        toDateController: toDateController,
                        toTimeController: toTimeController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SearchCars(
                        onPressed: () {
                          // Add your search functionality here
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const NextCarHeader(),

            // const ToyottaCar(),
            // const ToyotaDetails(
            //   vechileName: 'TOYOTA Parado 2013',
            //   vechileDetails: 'Automatic | 7seats | 4WD | Brown',
            //   destination: ' Al-khuwair, Muscat, Oman',
            //   fareCharges: '15.580',
            //   omarDay: 'OMR/day',
            // ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarMenu(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
