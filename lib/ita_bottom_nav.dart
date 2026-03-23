import 'package:flutter/material.dart';
import 'ita_theme.dart';

class ItaPageTemplate extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const ItaPageTemplate({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
        child: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        Container(color: Colors.grey[200], child: const Icon(Icons.restaurant, color: Colors.white)),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(title.toUpperCase(), textAlign: TextAlign.center, style: ItaTheme.sectionTitle),
              const SizedBox(height: 20),
              Container(width: 50, height: 2, color: ItaTheme.pomodoroRed),
              const SizedBox(height: 20),
              Text(subtitle.toUpperCase(), textAlign: TextAlign.center, style: ItaTheme.subtitleStyle),
            ],
          ),
        ),
      ),
    );
  }
}