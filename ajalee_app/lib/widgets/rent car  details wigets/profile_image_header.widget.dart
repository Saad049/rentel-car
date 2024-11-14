import 'package:ajalee_app/font_colors.dart/custom_color.dart';
import 'package:flutter/material.dart';

class ProfileImageHeader extends StatelessWidget {
  final String profileImage;

  const ProfileImageHeader({
    Key? key,
    required this.profileImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(profileImage),
            radius: 20, // Adjust the radius as needed
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Mohammad Saad",
            style: CustomColors.subheadingStyle.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
