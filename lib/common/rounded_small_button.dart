import 'package:flutter/material.dart';

class RoundedSmallBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color backgroud;
  final Color labelColor;
  const RoundedSmallBtn({
    super.key,
    required this.onTap,
    required this.label,
    this.backgroud = Colors.white,
    this.labelColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(
          color: labelColor,
          fontSize: 16,
        ),
      ),
      backgroundColor: backgroud,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
    );
  }
}
