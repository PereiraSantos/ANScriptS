import 'package:flutter/material.dart';

class CheckBoxFilter extends StatefulWidget {
  const CheckBoxFilter({super.key});

  @override
  State<CheckBoxFilter> createState() => _CheckBoxFilterState();
}

class _CheckBoxFilterState extends State<CheckBoxFilter> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Checkbox(
        checkColor: Colors.white,
        activeColor: Colors.grey,
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}
