import 'package:flutter/material.dart';
import 'package:ajalee_app/font_colors.dart/custom_color.dart';

class CompanyBadge extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color borderColor;
  final Color backgroundColor;

  const CompanyBadge({
    Key? key,
    required this.text,
    required this.icon,
    required this.borderColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: 30,
        width: 70,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
          boxShadow: [
            BoxShadow(
              color: backgroundColor.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              size: 8,
            ),
            Text(
              text,
              style: CustomColors.customerReviewStyle.copyWith(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
