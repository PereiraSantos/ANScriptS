import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 5, top: 10),
      child: Text(label, style: const TextStyle(fontSize: 16)),
    );
  }
}
