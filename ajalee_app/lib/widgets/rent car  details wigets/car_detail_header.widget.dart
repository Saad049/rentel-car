import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:ajalee_app/widgets/rent%20screen%20widgets/company_badge.widget.dart';
import 'package:flutter/material.dart';

class CarDEtailHeader extends StatelessWidget {
  const CarDEtailHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Toyota prado 2021",
          style: CustomColors.rentHeaderStyle,
        ),
        const CompanyBadge(
          text: "company",
          icon: Icons.login,
          borderColor: Colors.grey,
          backgroundColor: const Color.fromARGB(255, 196, 159, 202),
        ),
      ],
    );
  }
}

class CarTypeHeader extends StatelessWidget {
  const CarTypeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        '4X4 cars',
        style: CustomColors.subHeaderStyle,
      ),
    ]);
  }
}
