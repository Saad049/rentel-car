import 'package:flutter/material.dart';

class DateTImeInput extends StatelessWidget {
  final TextEditingController fromDateController;
  final TextEditingController fromTimeController;
  final TextEditingController toDateController;
  final TextEditingController toTimeController;

  const DateTImeInput({
    Key? key,
    required this.fromDateController,
    required this.fromTimeController,
    required this.toDateController,
    required this.toTimeController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("From"),
            const SizedBox(height: 13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40,
                  width: 140,
                  child: TextField(
                    controller: fromDateController,
                    decoration: InputDecoration(
                      hintText: 'Select date',
                      suffixIcon: const Icon(Icons.calendar_today),
                      hintStyle: const TextStyle(fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onChanged: (value) {
                      print('From date: $value');
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 100,
                  child: TextField(
                    controller: fromTimeController,
                    decoration: InputDecoration(
                      hintText: 'Time',
                      suffixIcon: const Icon(Icons.access_time),
                      hintStyle: const TextStyle(fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (value) {
                      print('From time: $value');
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text("To"),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40,
                  width: 140,
                  child: TextField(
                    controller: toDateController,
                    decoration: InputDecoration(
                      hintText: 'Select date',
                      suffixIcon: const Icon(Icons.calendar_today),
                      hintStyle: const TextStyle(fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onChanged: (value) {
                      print('To date: $value');
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 100,
                  child: TextField(
                    controller: toTimeController,
                    decoration: InputDecoration(
                      hintText: 'Time',
                      suffixIcon: const Icon(Icons.access_time),
                      hintStyle: const TextStyle(fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (value) {
                      print('To time: $value');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
