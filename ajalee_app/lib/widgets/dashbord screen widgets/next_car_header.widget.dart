import 'package:ajalee_app/widgets/dashbord%20screen%20widgets/toyota_details.widget.dart';
import 'package:flutter/material.dart';

class NextCarHeader extends StatelessWidget {
  const NextCarHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(top: 525),
      child: const Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Next Rents',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'see all',
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              ToyottaCar(),
            ],
          ),
        ],
      ),
    );
  }
}
