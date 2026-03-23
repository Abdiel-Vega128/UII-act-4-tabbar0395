import 'package:flutter/material.dart';
import 'ita_theme.dart';
class ItaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ItaAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent, elevation: 0, centerTitle: true,
      title: RichText(
        text: const TextSpan(
          style: TextStyle(fontFamily: 'Georgia', fontSize: 24, letterSpacing: 5),
          children: [
            TextSpan(text: 'I', style: TextStyle(color: ItaTheme.forestGreen)),
            TextSpan(text: 'T', style: TextStyle(color: Colors.grey)),
            TextSpan(text: 'A', style: TextStyle(color: ItaTheme.pomodoroRed)),
          ],
        ),
      ),
    );
  }
}