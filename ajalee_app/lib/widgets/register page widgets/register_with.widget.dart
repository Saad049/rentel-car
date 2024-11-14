import 'package:flutter/material.dart';

class RegisterWith extends StatelessWidget {
  const RegisterWith({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          // Left divider
          Expanded(
            child: Divider(
              color: Colors.black,
              thickness: 0, // Thickness of the divider
              endIndent: 15, // Spacing between divider and text
            ),
          ),

          // Center text "Or Register With"
          Text(
            "Or Register with",
          ),

          // Right divider
          Expanded(
            child: Divider(
              color: Colors.black,
              thickness: 0, // Thickness of the divider
              indent: 18, // Spacing between divider and text
            ),
          ),
        ],
      ),
    );
  }
}
