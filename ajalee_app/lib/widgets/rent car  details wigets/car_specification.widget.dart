import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:flutter/material.dart';

class CarSpecificationHeader extends StatelessWidget {
  const CarSpecificationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Car specifications',
            style: CustomColors.carDetails,
          ),
        ),
      ],
    );
  }
}

class SeatInsuranceRow extends StatelessWidget {
  const SeatInsuranceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              const Icon(Icons.event_seat),
              const SizedBox(width: 4),
              Text('6 seats', style: CustomColors.carSpecsStyle),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              const Icon(Icons.check_circle_outline_outlined),
              const SizedBox(width: 4),
              Text('Insurance: Yes', style: CustomColors.carSpecsStyle),
            ],
          ),
        ),
      ],
    );
  }
}

class AcFuelRow extends StatelessWidget {
  const AcFuelRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              const Icon(Icons.ac_unit),
              const SizedBox(width: 4),
              Text('A/C: Yes', style: CustomColors.carSpecsStyle),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              const Icon(Icons.local_gas_station),
              const SizedBox(width: 4),
              Text('Fuel: Like for like', style: CustomColors.carSpecsStyle),
            ],
          ),
        ),
      ],
    );
  }
}

class GearDoorInfoRow extends StatelessWidget {
  const GearDoorInfoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              const Icon(Icons.directions_car),
              const SizedBox(width: 4),
              Text('Automatic', style: CustomColors.carSpecsStyle),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              const Icon(Icons.check_circle_outline_outlined),
              const SizedBox(width: 4),
              Text('5 doors', style: CustomColors.carSpecsStyle),
            ],
          ),
        ),
      ],
    );
  }
}

class SpeedColorInfoRow extends StatelessWidget {
  const SpeedColorInfoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              const Icon(Icons.speed),
              const SizedBox(width: 4),
              Text('150-200km/day', style: CustomColors.carSpecsStyle),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              const Icon(
                Icons.circle,
                color: Colors.grey,
              ),
              const SizedBox(width: 4),
              Text('Color: grey', style: CustomColors.carSpecsStyle),
            ],
          ),
        ),
      ],
    );
  }
}
