import 'package:flutter/material.dart';

class RowCheckbox extends StatelessWidget {
  const RowCheckbox({super.key, required this.child, required this.label});

  final Widget child;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 16)),
          child,
        ],
      ),
    );
  }
}
