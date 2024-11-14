import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:ajalee_app/widgets/rent%20car%20%20details%20wigets/review_graph.widget.dart';

import 'package:flutter/material.dart';

class CustomerRates extends StatelessWidget {
  const CustomerRates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Customer Rates',
                style: CustomColors.carDetails,
              ),
              Text(
                'seel all',
                style: CustomColors.carDetails.copyWith(
                    fontSize: 12,
                    color: Colors.blue,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
          Text(
            'These rattings and review are based on the first hand experience of felow renters who have used the cars',
            style: CustomColors.paragraphText,
          ),
        ],
      ),
    );
  }
}

class CustomerReview extends StatelessWidget {
  const CustomerReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Text(
                "4.2",
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 13, 61, 144)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    5,
                    (index) => Icon(
                          Icons.star,
                          color: index == 4
                              ? Colors.grey
                              : Colors.amber, // Change color of the third star
                          size: 18,
                        )),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '52,548,236',
                style: CustomColors.subHeaderStyle.copyWith(fontSize: 18),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 14,
        ),
        Expanded(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ReviewGraph(
              reviewCounts: [740, 250, 125, 111, 25],
            ),
          ),
        ),
      ],
    );
  }
}
