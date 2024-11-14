import 'package:ajalee_app/widgets/register%20page%20widgets/account_register_button.widget.dart';
import 'package:ajalee_app/widgets/register%20page%20widgets/check_conditon.widget.dart';
import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:ajalee_app/widgets/register%20page%20widgets/dynamic_input_field.widget.dart';
import 'package:ajalee_app/widgets/register%20page%20widgets/register_button.widget.dart';
import 'package:ajalee_app/widgets/register%20page%20widgets/register_with.widget.dart';
import 'package:ajalee_app/widgets/register%20page%20widgets/social_media_button..widget.dart';
import 'package:flutter/material.dart';

class RegisterLogin extends StatefulWidget {
  const RegisterLogin({super.key});

  @override
  State<RegisterLogin> createState() => _RegisterLoginState();
}

class _RegisterLoginState extends State<RegisterLogin> {
  bool isChecked = false;
  int _selectedIndex = 0;
  final TextEditingController _controller = TextEditingController();
  String displayText = "Email";

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when the widget is disposed
    super.dispose();
  }

  void _updateTextField(int index) {
    if (index == 0) {
      _controller.text = "email.123@gmail.com"; // Default email placeholder
      displayText = "Email"; // Update display text for Email
    } else {
      _controller.text = "+968 (XXX) XXX-(XXXX)"; // Default phone placeholder
      displayText = "Phone"; // Update display text for Phone
    }
  }

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage("assets/background.png"), // Path to background image
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            // Logo image at the top center
            Padding(
              padding: const EdgeInsets.only(
                  top: 70.0), // Adjust padding for top spacing
              child: Center(
                child: Image.asset(
                  "assets/logo.png", // Path to your logo image
                  width: 150, // Adjust width as needed
                  height: 150, // Adjust height as needed
                ),
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: screenWidth * 3,
                  width: screenWidth * 1.99,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Custom Toggle Button for Email and Phone
                      RegisterButton(
                        selectedIndex: _selectedIndex,
                        labels: const ['Email', 'Phone'],
                        onPressed: (int index) {
                          setState(() {
                            _selectedIndex = index;
                            _updateTextField(index); // Update selected index
                          });
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Use CustomDisplayText to show the selected option
                      DisplayButtonText(
                        text: displayText,
                        style: CustomColors.subheadingStyle,
                      ),
                      // Use CustomInputField for the text field
                      DisplayInputField(
                        controller: _controller,
                        hintText: _selectedIndex == 0
                            ? 'email.123@gmail.com' // Email placeholder
                            : '123-456-7890', // Phone placeholder
                      ),

                      // Your initial checkbox state
                      CheckCondition(
                        isChecked: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      AccountRegister(
                        text: "Register",
                        
                        onPressed: () {},
                        width: screenWidth * 0.9,
                         // Set desired width here
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Column(
                        children: [
                          RegisterWith(),
                        ],
                      ),
                      const SocialLoginButtons(),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have account?"),
                          Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
