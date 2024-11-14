import 'package:flutter/material.dart';
import 'package:ajalee_app/font_colors.dart/custom_color.dart'; // Custom colors

class WelcomeHeader extends StatelessWidget {
  final String profileImage;
  final String name;
  final String welcomeMessage;

  const WelcomeHeader({
    Key? key,
    required this.profileImage,
    required this.name,
    required this.welcomeMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35, // Responsive height
      width: MediaQuery.of(context).size.width * 3, // Responsive width
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: Color.fromARGB(255, 12, 40, 63), // Background color
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 35, left: 12, right: 12), // Add right padding for spacing
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to start
          children: [
            // First Row: Profile info and notification icon
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Space between items
              children: [
                // Profile Picture and Name
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(profileImage),
                      radius: 30, // Profile picture size
                    ),
                    const SizedBox(
                        width: 10), // Spacing between avatar and text
                    Text(
                      name,
                      style: CustomColors.subheadingStyle
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),

                // Notification Icon
                Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(
                        255, 20, 81, 132), // Circle background color
                  ),
                  child: const Icon(
                    Icons.notifications_rounded,
                    color: Colors.white, // Icon color
                    size: 25, // Icon size
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Second Row: Welcome message
            Text.rich(
              TextSpan(
                text: welcomeMessage, // Regular text
                style: CustomColors.headingStyle
                    .copyWith(color: Colors.white, fontSize: 29),
                children: const [
                  TextSpan(
                    text: "Car!", // Word to change color
                    style: TextStyle(
                        color: Colors.yellow), // Custom color for "Car!"
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
