
import 'package:flutter/material.dart';
import 'package:trade_ui/src/shared/app_colors.dart';
import 'package:trade_ui/src/shared/styles.dart';

class TradeText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const TradeText.headingOne(this.text) : style = heading1Style;
  const TradeText.headingTwo(this.text) : style = heading2Style;
  const TradeText.headingThree(this.text) : style = heading3Style;
  const TradeText.headline(this.text) : style = headlineStyle;
  const TradeText.subheading(this.text) : style = subheadingStyle;
  const TradeText.caption(this.text) : style = captionStyle;

  TradeText.body(this.text, {Color color = kcMediumGreyColor})
      : style = bodyStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}