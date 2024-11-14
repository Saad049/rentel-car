import 'package:flutter/material.dart';

class LocationInput extends StatelessWidget {
  final TextEditingController controller;

  const LocationInput({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Location",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 40,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.location_on),
              hintText: 'Search location',
              hintStyle: const TextStyle(fontSize: 13),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21.0),
              ),
            ),
            onChanged: (value) {
              print('Searching location: $value');
            },
          ),
        ),
      ],
    );
  }
}
