import 'package:flutter/material.dart';

class SafeAvatar extends StatelessWidget {
  final String assetPath;
  final String fallbackText;
  final double radius;

  const SafeAvatar({
    super.key,
    required this.assetPath,
    required this.fallbackText,
    this.radius = 36,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return CircleAvatar(
      radius: radius,
      backgroundColor: scheme.primaryContainer,
      child: ClipOval(
        child: Image.asset(
          assetPath,
          width: radius * 2,
          height: radius * 2,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => Center(
            child: Text(
              fallbackText,
              style: TextStyle(
                fontSize: radius * 0.55,
                fontWeight: FontWeight.bold,
                color: scheme.onPrimaryContainer,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
