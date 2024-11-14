import 'package:flutter/material.dart';

class CarDetailsBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  CarDetailsBar({
    Key? key,
    this.title = 'Car Details',
  })  : preferredSize = Size.fromHeight(kToolbarHeight * 1.9), //
        super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double appBarHeight = screenHeight * 0.16;
    return AppBar(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      backgroundColor: const Color.fromARGB(255, 20, 42, 60),
      toolbarHeight: appBarHeight,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 20.0), // Move text down
        child: Text(
          title, // Use the dynamic title here
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(top: 20.0), // Move arrow down
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
