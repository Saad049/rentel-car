import 'package:flutter/material.dart';

class NavigationBarMenu extends StatelessWidget {
  final int currentIndex;
  final Color backgroundColor;
  final Color selectedItemColor;
  final ValueChanged<int> onTap;

  const NavigationBarMenu({
    Key? key,
    required this.currentIndex,
    this.backgroundColor = Colors.blue,
    this.selectedItemColor = Colors.white,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: backgroundColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.circle_rounded, size: 12),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.circle_rounded, size: 12),
          label: 'Rent',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.circle_rounded, size: 12),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.circle_rounded, size: 12),
          label: 'Settings',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: selectedItemColor,
      onTap: onTap,
    );
  }
}
