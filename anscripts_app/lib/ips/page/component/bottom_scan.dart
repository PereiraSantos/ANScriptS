import 'package:flutter/material.dart';

class BottomScan extends StatelessWidget {
  const BottomScan({super.key, required this.onClick});

  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
      ),
      onPressed: () => onClick,
      child: const Text('ESCANIAR'),
    );
  }
}
