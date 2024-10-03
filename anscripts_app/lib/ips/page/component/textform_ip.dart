import 'package:flutter/material.dart';

class TextformIp extends StatelessWidget {
  const TextformIp({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
    );
  }
}
