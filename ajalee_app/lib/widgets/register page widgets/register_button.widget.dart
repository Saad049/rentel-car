import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  final int selectedIndex;
  final List<String> labels;
  final ValueChanged<int> onPressed;

  const RegisterButton({
    Key? key,
    required this.selectedIndex,
    required this.labels,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      borderRadius: BorderRadius.circular(30),
      borderColor: Colors.grey,
      selectedBorderColor: Colors.grey,
      color: Colors.white,
      selectedColor: Colors.black,
      fillColor: Colors.white,
      isSelected:
          List.generate(labels.length, (index) => index == selectedIndex),
      onPressed: onPressed,
      children: List.generate(
        labels.length,
        (index) => Container(
          width: 100, // Set the width for each toggle button
          child: Center(child: Text(labels[index])),
        ),
      ),
    );
  }
}
