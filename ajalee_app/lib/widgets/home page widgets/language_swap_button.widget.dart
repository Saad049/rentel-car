import 'package:flutter/material.dart';

class LanguageToogle extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onPressed;
  final List<String> labels;

  const LanguageToogle({
    Key? key,
    required this.selectedIndex,
    required this.onPressed,
    required this.labels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      borderRadius: BorderRadius.circular(30),
      borderColor: Colors.grey,
      selectedBorderColor: Colors.grey,
      color: Colors.white,
      selectedColor: Colors.black,
      fillColor: Colors.yellow,
      isSelected: List.generate(
        labels.length,
        (index) => index == selectedIndex,
      ),
      onPressed: onPressed,
      children: labels.map((label) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(label),
        );
      }).toList(),
    );
  }
}
