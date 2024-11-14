import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:flutter/material.dart';

class CustomerReview extends StatelessWidget {
  final double rating;
  final int reviewCount;

  const CustomerReview({
    super.key,
    required this.rating,
    required this.reviewCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                // Spacer between text and stars
                Icon(Icons.star, color: Colors.yellow, size: 10),
                Icon(Icons.star, color: Colors.yellow, size: 10),
                Icon(Icons.star, color: Colors.yellow, size: 10),
                Icon(Icons.star, color: Colors.yellow, size: 10),
                Icon(Icons.star_border, color: Colors.yellow, size: 10),
                Text(
                  rating.toStringAsFixed(1),
                  style: CustomColors.customerReviewStyle,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '+$reviewCount reviews',
                  style: CustomColors.customerReviewStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
