import 'package:flutter/material.dart';

// Custom Display Text Widget
class DisplayButtonText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const DisplayButtonText({
    Key? key,
    required this.text,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            text,
            style:
                style ?? TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// Custom Input Field Widget
class DisplayInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const DisplayInputField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            hintText: hintText,
            filled: true,
            fillColor: Color.fromARGB(196, 251, 251, 251)),
      ),
    );
  }
}
