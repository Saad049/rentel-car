import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:flutter/material.dart';

class SearchCars extends StatelessWidget {
  final VoidCallback onPressed;

  const SearchCars({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 40,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.search,color: Colors.white,),
        label: const Text(
          "Search cars",
          style: CustomColors.buttonTextStyle,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 8, 98, 172),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21),
          ),
        ),
      ),
    );
  }
}
