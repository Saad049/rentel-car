import 'package:flutter/material.dart';

class VehicleForRent extends StatelessWidget {
  const VehicleForRent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/prado.png'),
        ),
      ),
    );
  }
}
