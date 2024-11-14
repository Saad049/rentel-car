import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:flutter/material.dart';

class ReviewGraph extends StatelessWidget {
  final List<int> reviewCounts;

  const ReviewGraph({super.key, required this.reviewCounts});

  @override
  Widget build(BuildContext context) {
    int totalReviews = reviewCounts.fold(0, (sum, count) => sum + count);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(5, (index) {
            int starRating = 5 - index;
            double percentage =
                totalReviews > 0 ? reviewCounts[index] / totalReviews : 0.0;

            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$starRating', style: CustomColors.subHeaderStyle),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 5,
                      child: Stack(
                        children: [
                          Container(
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          FractionallySizedBox(
                            widthFactor: percentage,
                            child: Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: Text('${reviewCounts[index]} ',
                          style: CustomColors.subHeaderStyle),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
              ],
            );
          })),
    );
  }
}
