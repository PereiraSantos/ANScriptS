import 'package:anscripts_app/ips/page/component/bottom_scan.dart';
import 'package:anscripts_app/ips/page/component/category.dart';
import 'package:anscripts_app/ips/page/component/check_box_filter.dart';
import 'package:anscripts_app/ips/page/component/row_checkbox.dart';
import 'package:anscripts_app/ips/page/component/textform_ip.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(15)),
                TextformIp(controller: controller),
                const Category(label: 'Descobrir porta:'),
                const RowCheckbox(label: 'Verbose:', child: CheckBoxFilter()),
                const RowCheckbox(label: 'Verbose:', child: CheckBoxFilter())
              ],
            ),
          ),
        ),
        bottomSheet: BottomScan(onClick: () {}));
  }
}
