import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  final String value;
  final String label;
  final String groupValue;
  final ValueChanged<String>? onChanged;

  const Gender({
    required this.value,
    required this.label,
    required this.groupValue,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        SizedBox(width: 10),
        Text(label),
      ],
    );
  }
}
