import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:ajalee_app/screens/rent_car.screen.dart';
import 'package:flutter/material.dart';

class CarFeatureDisplay extends StatelessWidget {
  final int seats;
  final bool insurance;
  final bool ac;
  final String fuelType;
  final String speed;
  final VoidCallback onRent;

  const CarFeatureDisplay({
    Key? key,
    required this.seats,
    required this.insurance,
    required this.ac,
    required this.fuelType,
    required this.speed,
    required this.onRent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align all to the start
      children: [
        Row(
          children: [
            const Icon(Icons.event_seat),
            const SizedBox(width: 4),
            Text('$seats seats', style: CustomColors.carSpecsStyle),
            const SizedBox(width: 45),
            // Adjusting alignment for insurance
            Icon(
                insurance ? Icons.check_circle_outline_outlined : Icons.cancel),
            const SizedBox(width: 4),
            Text('Insurance: ${insurance ? "Yes" : "No"}',
                style: CustomColors.carSpecsStyle),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(Icons.ac_unit),
            const SizedBox(width: 4),
            Text('A/C: ${ac ? "Yes" : "No"}',
                style: CustomColors.carSpecsStyle),
            const SizedBox(width: 40),
            Icon(Icons.local_gas_station),
            const SizedBox(width: 4),
            Text(fuelType, style: CustomColors.carSpecsStyle),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(Icons.directions_car),
            const SizedBox(width: 4),
            Text('Automatic', style: CustomColors.carSpecsStyle),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(Icons.speed),
            const SizedBox(width: 4),
            Text(speed, style: CustomColors.carSpecsStyle),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 30,
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RentCar(), // Replace with your destination screen widget
                ),
              );
            },
            icon: const Icon(Icons.directions_car,color: Colors.white,),
            label: const Text('Rent this car',style:CustomColors.buttonTextStyle),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                
                borderRadius: BorderRadius.circular(29),
                
              ),
            ),
          ),
        ),
      ],
    );
  }
}
