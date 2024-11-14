import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:ajalee_app/widgets/book%20car%20screen%20widgets/%20circle_with_labels.widget.dart';
import 'package:ajalee_app/widgets/book%20car%20screen%20widgets/book_car_screen.widget.dart';
import 'package:ajalee_app/widgets/book%20car%20screen%20widgets/country_name.widgets.dart';
import 'package:ajalee_app/widgets/rent%20car%20%20details%20wigets/car_detaill_app_bar.widget.dart';
import 'package:flutter/material.dart';

class BookCar extends StatefulWidget {
  const BookCar({super.key});

  @override
  State<BookCar> createState() => _BookCarState();
}

class _BookCarState extends State<BookCar> {
  int selectedIndex =-1;

  @override
  Widget build(BuildContext context) {
    // Initial color for the country code container

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: CarDetailsBar(
        title: "Rent car",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleWithLabels(),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Name',
                      style: CustomColors.subheadingStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText: 'Mohammad saad',
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Date of birth',
                      style: CustomColors.subheadingStyle,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    isDense: true,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText:
                        'MM/DD/YYYY', // Adjusted the hint text for clarity
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Email',
                      style: CustomColors.subheadingStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    isDense: true,
                    hintText: 'Useremail@gmail.com',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Phone number',
                  style: CustomColors.subheadingStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CountryCode(), // First instance of CountryCode
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            isDense: true,
                            border: OutlineInputBorder(),
                            hintText: '9658 6522',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Adding another instance of CountryCode below
              Row(
                children: [
                  // Second instance of CountryCode
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Nationality',
                      style: CustomColors.subheadingStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // Facebook login button
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = -1;
                          });
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            "Omani",
                            style: CustomColors.paymentMethod,
                          )),
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0,
                            ),
                            color: selectedIndex == -1
                                ? Colors.blue
                                : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    // Google login button
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            "Resident",
                            style: CustomColors.paymentMethod,
                          )),
                          height: 50,
                          decoration: BoxDecoration(
                              color: selectedIndex == 1
                                  ? Colors.blue
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 0,
                              )),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    // Apple login button
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 2;
                          });
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            "Non-resident",
                            style: CustomColors.paymentMethod,
                          )),
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color:
                                selectedIndex == 2 ? Colors.blue : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Nationality',
                  style: CustomColors.subheadingStyle,
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              CountryName(),

              // Elevated button for "Next Step"
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(
                      Size(double.infinity, 40),
                    ),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Handle next step action
                  },
                  child: Text('Next Step'),
                ),
              ),

              // Text button for "Back"
              Center(
                child: TextButton(
                  onPressed: () {
                    // Handle back action
                    Navigator.pop(context);
                  },
                  child: Text('Back'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue, // Text color
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
