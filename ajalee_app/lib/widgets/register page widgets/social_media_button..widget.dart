import 'package:flutter/material.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          // Facebook login button
          Expanded(
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0,
                ),
                color: Colors.white,
                image: const DecorationImage(
                  image: AssetImage('assets/faceBookLogo.png'),
                  fit: BoxFit.contain,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),

          const SizedBox(width: 10),

          // Google login button
          Expanded(
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage('assets/google.png'),
                    fit: BoxFit.contain,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 0,
                  )),
            ),
          ),

          const SizedBox(width: 10),

          // Apple login button
          Expanded(
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0,
                ),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.apple,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
