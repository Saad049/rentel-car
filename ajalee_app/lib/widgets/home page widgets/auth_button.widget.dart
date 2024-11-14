import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final double width;
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const AuthButton({
    Key? key,
    required this.width,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: CustomColors.fontColor,
          backgroundColor:
              isSelected ? CustomColors.primaryColor : Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
