import 'package:flutter/material.dart';

import '../../trade_ui.dart';

class TradeCheckbox extends StatelessWidget {
  final bool isChecked;
  final void Function(dynamic) changed;
  const TradeCheckbox({Key? key, required this.isChecked, required this.changed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: isChecked,
      onChanged: changed,
      activeColor: primaryBlueColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    );
  }
}
