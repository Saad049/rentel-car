import 'package:flutter/material.dart';
import 'package:ajalee_app/font_colors.dart/custom_color.dart';

class CarInfoHeader extends StatelessWidget {
  final String carName;
  final String price;
  final String carType;
  final String rentalRate;

  const CarInfoHeader({
    Key? key,
    required this.carName,
    required this.price,
    required this.carType,
    required this.rentalRate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              carName,
              style: CustomColors.rentHeaderStyle,
            ),
            Text(
              price,
              style: CustomColors.rentHeaderStyle.copyWith(
                color: const Color.fromARGB(255, 15, 91, 152),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              carType,
              style: CustomColors.subHeaderStyle,
            ),
            Text(
              rentalRate,
              style: CustomColors.subHeaderStyle,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 7),
          child: Divider(
            color: Color.fromARGB(255, 177, 172, 172),
            thickness: 0,
          ),
        ),
      ],
    );
  }
}

class LineDivider extends StatelessWidget {
  const LineDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Color.fromARGB(255, 177, 172, 172),
      thickness: 0,
    );
  }
}
