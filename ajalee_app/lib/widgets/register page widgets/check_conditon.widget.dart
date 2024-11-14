import 'package:flutter/material.dart';

class CheckCondition extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  const CheckCondition({
    Key? key,
    required this.isChecked,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
        ),
        const Text.rich(
          TextSpan(
            text: 'I agree to ',
            children: <TextSpan>[
              TextSpan(
                text: 'terms',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.black,
                ),
              ),
              TextSpan(text: ' and '),
              TextSpan(
                text: 'conditions',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
