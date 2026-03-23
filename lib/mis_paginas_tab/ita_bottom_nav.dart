import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/ita_theme.dart';
class ItaBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const ItaBottomNav({super.key, required this.currentIndex, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (i) { HapticFeedback.lightImpact(); onTap(i); },
      selectedItemColor: ItaTheme.forestGreen, unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed, showSelectedLabels: false,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.restaurant_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.local_bar_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.people_outline), label: ''),
      ],
    );
  }
}