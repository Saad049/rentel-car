import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:flutter/material.dart';

class OtherInstructionsHeader extends StatelessWidget {
  const OtherInstructionsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Other Instructions',
            style: CustomColors.carDetails,
          ),
        ),
      ],
    );
  }
}

class FuelPolicyInfo extends StatelessWidget {
  const FuelPolicyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'Fuel Policy:like for like',
                style: CustomColors.otherInstructions,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            'your car rentel come with fully or partially a fuel tank.Please return the car with the same fuel level to avoid additional refueling charges',
            style: CustomColors.paragraphText,
          ),
        ),
      ],
    );
  }
}

class IdentityVerificationInfo extends StatelessWidget {
  const IdentityVerificationInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'identity verification',
                style: CustomColors.otherInstructions,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            'your car rentel come with fully or partially a fuel tank.Please return the car with the same fuel level to avoid additional refueling charges',
            style: CustomColors.paragraphText,
          ),
        ),
      ],
    );
  }
}
