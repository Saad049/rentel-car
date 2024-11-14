import 'package:flutter/material.dart';

import 'package:ajalee_app/screens/dashbord.screen.dart';
import 'package:ajalee_app/screens/register.screen.dart';
import 'package:ajalee_app/widgets/home%20page%20widgets/auth_button.widget.dart';
import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:ajalee_app/widgets/home%20page%20widgets/language_swap_button.widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  int _selectedButton = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 200),
            child: Center(
              child: Column(
                children: [
                  LanguageToogle(
                    selectedIndex: _selectedIndex,
                    labels: const ['English', 'عربی'],
                    onPressed: (int index) {
                      setState(() {
                        _selectedIndex = index; // Update selected index
                      });
                    },
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/logo.png"),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Text(
                              "Rent Your Car in few Clicks and enjoy ",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "your trip",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      AuthButton(
                        width: screenWidth * 0.8,
                        text: 'Sign Up',
                        isSelected: _selectedButton == 0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterLogin()),
                          );
                          setState(() {
                            _selectedButton = 0; // Select Sign Up
                          });
                        },
                      ),
                      const SizedBox(height: 20), // Space between buttons
                      AuthButton(
                        width: screenWidth * 0.8,
                        text: 'Login',
                        isSelected: _selectedButton == 1,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DashbordScreen()),
                          );
                          setState(() {
                            _selectedButton = 1; // Select Login
                          });
                        },
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Skip",
                          style: TextStyle(color: CustomColors.primaryColor),
                        ),
                      ),
                    ],
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
