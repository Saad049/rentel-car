import 'package:flutter/material.dart';

class ToyottaCar extends StatelessWidget {
  const ToyottaCar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          // Use Expanded to take up available space
          flex: 3, // Adjust the flex ratio as needed
          child: Container(
            height: MediaQuery.of(context).size.height * 0.21,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(14),
                  bottomLeft: Radius.circular(14)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align text to the start
              children: [
                const Text(
                  "TOYOTA Parado 2013",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 11),
                const Text(
                  "Automatic | 7seats | 4WD | Brown",
                  style: TextStyle(color: Color.fromARGB(255, 186, 184, 184)),
                ),
                const SizedBox(height: 5),
                const Row(
                  children: [
                    Icon(Icons.location_on, size: 12),
                    Text(
                      " Al-khuwair, Muscat, Oman",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Row(
                  children: [
                    Icon(Icons.monetization_on, size: 12),
                    Text("15.580 "),
                    Text(
                      "OMR/day",
                      style:
                          TextStyle(color: Color.fromARGB(255, 186, 184, 184)),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Row(
                  children: [
                    Icon(Icons.calendar_month, size: 12),
                    Text(" Thursday, Nov 12", style: TextStyle(fontSize: 12)),
                    Text(" to "),
                    Text(" Monday, Dec 12", style: TextStyle(fontSize: 12)),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          0.033, // 5% of the screen height
                      width: MediaQuery.of(context).size.width *
                          0.5, // 60% of the screen width
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                        ),
                        child: const Text("views"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Add space between text and image
        Expanded(
          // Use Expanded for the image
          flex: 1,
          child: Container(
            height: MediaQuery.of(context).size.height *
                0.21, // Set relative height
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/toyotaPrado.png'),
                  fit: BoxFit.cover),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
            ),
          ),
        ),
      ],
    );
  }
}
