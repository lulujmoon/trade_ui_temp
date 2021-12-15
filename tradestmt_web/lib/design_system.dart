
import 'package:flutter/material.dart';
import 'package:trade_ui/trade_ui.dart';

class DesignSystem extends StatelessWidget {
  const DesignSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        children: [
          TradeText.headingOne('Design System'),
          verticalSpaceSmall,
          Divider(),
          verticalSpaceSmall,
          ...buttonWidgets,
          ...textWidgets,
          ...inputFields,
        ],
      ),
    );
  }

  List<Widget> get textWidgets => [
    TradeText.headline('Text Styles'),
    verticalSpaceMedium,
    TradeText.headingOne('Heading One'),
    verticalSpaceMedium,
    TradeText.headingTwo('Heading Two'),
    verticalSpaceMedium,
    TradeText.headingThree('Heading Three'),
    verticalSpaceMedium,
    TradeText.headline('Headline'),
    verticalSpaceMedium,
    TradeText.subheading('This will be a sub heading to the heading'),
    verticalSpaceMedium,
    TradeText.body('Body Text that will be used for the general body'),
    verticalSpaceMedium,
    TradeText.caption('This will be the caption usually for smaller details'),
    verticalSpaceMedium,
  ];

  List<Widget> get buttonWidgets => [
    TradeText.headline('Buttons'),
    verticalSpaceMedium,
    TradeText.body('Normal'),
    verticalSpaceSmall,
    TradeButton(
      title: 'SIGN IN',
    ),
    verticalSpaceSmall,
    TradeText.body('Disabled'),
    verticalSpaceSmall,
    TradeButton(
      title: 'SIGN IN',
      disabled: true,
    ),
    verticalSpaceSmall,
    TradeText.body('Busy'),
    verticalSpaceSmall,
    TradeButton(
      title: 'SIGN IN',
      busy: true,
    ),
    verticalSpaceSmall,
    TradeText.body('Outline'),
    verticalSpaceSmall,
    TradeButton.outline(
      title: 'Select location',
      leading: Icon(
        Icons.send,
        color: kcPrimaryColor,
      ),
    ),
    verticalSpaceMedium,
  ];

  List<Widget> get inputFields => [
    TradeText.headline('Input Field'),
    verticalSpaceSmall,
    TradeText.body('Normal'),
    verticalSpaceSmall,
    TradeInputField(
      controller: TextEditingController(),
      placeholder: 'Enter Password',
    ),
    verticalSpaceSmall,
    TradeText.body('Leading Icon'),
    verticalSpaceSmall,
    TradeInputField(
      controller: TextEditingController(),
      leading: Icon(Icons.reset_tv),
      placeholder: 'Enter TV Code',
    ),
    verticalSpaceSmall,
    TradeText.body('Trailing Icon'),
    verticalSpaceSmall,
    TradeInputField(
      controller: TextEditingController(),
      trailing: Icon(Icons.clear_outlined),
      placeholder: 'Search for things',
    ),
  ];
}