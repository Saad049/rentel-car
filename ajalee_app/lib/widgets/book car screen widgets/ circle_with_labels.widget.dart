import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:flutter/material.dart';

class CircleWithLabels extends StatefulWidget {
  @override
  State<CircleWithLabels> createState() => _CircleWithLabelsState();
}

class _CircleWithLabelsState extends State<CircleWithLabels> {
  // Track the selected circle
  int _selectedCircle = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Row(
            children: [
              _buildCircle('1', _selectedCircle == 1),
              Expanded(
                child: Divider(
                  color: Color.fromARGB(255, 158, 187, 233),
                  thickness: 7,
                ),
              ),
              _buildCircle('2', _selectedCircle == 2),
              Expanded(
                child: Divider(
                  color: Color.fromARGB(255, 158, 187, 233),
                  thickness: 7,
                ),
              ),
              _buildCircle('3', _selectedCircle == 3),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildLabelColumn('personal', 'details', _selectedCircle == 1),
              _buildLabelColumn('upload', 'documents', _selectedCircle == 2),
              _buildLabelColumn('Payment', '', _selectedCircle == 3),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCircle(String label, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCircle = int.parse(label); // Update the selected circle
        });
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: isSelected
                ? const Color.fromARGB(255, 5, 77, 137)
                : Colors.transparent, // Change border color
          ),
        ),
        child: CircleAvatar(
          radius: 15,
          child: Text(label),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }

  Widget _buildLabelColumn(String label1, String label2, bool isSelected) {
    return Column(
      children: [
        Text(
          label1,
          style: CustomColors.paymentMethod.copyWith(
            color: isSelected
                ? const Color.fromARGB(255, 5, 77, 137)
                : Colors.grey, // Change text color
          ),
        ),
        if (label2.isNotEmpty)
          Text(
            label2,
            style: CustomColors.paymentMethod.copyWith(
              color: isSelected
                  ? const Color.fromARGB(255, 5, 77, 137)
                  : Colors.grey, // Change text color
            ),
          ),
      ],
    );
  }
}
