
import 'package:flutter/material.dart';
import 'package:trade_ui/trade_ui.dart';

class DesignSystem extends StatelessWidget {
  const DesignSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TradeText.headingOne('Design System'),
              verticalSpaceSmall,
              Divider(),
              verticalSpaceSmall,
              ...buttonWidgets,
              ...textWidgets,
              ...inputFields,
              ...tradeCheckboxes
            ],
          ),
        ),
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
    verticalSpaceMedium,
    TradeText.body('Medium White'),
    verticalSpaceSmall,
    TradeInputField.mediumWhite(
      controller: TextEditingController(),
      placeholder: 'Medium White',
    ),
    verticalSpaceSmall,
    TradeText.body('Short White'),
    verticalSpaceSmall,
    TradeInputField.shortWhite(
      controller: TextEditingController(),
      placeholder: 'Short White',
    ),
    verticalSpaceSmall,
    TradeText.body('Medium Blue'),
    verticalSpaceSmall,
    TradeInputField.mediumBlue(
      controller: TextEditingController(),
      placeholder: 'Medium Blue',
    ),
    verticalSpaceSmall,
    TradeText.body('Short Blue'),
    verticalSpaceSmall,
    TradeInputField.shortBlue(
      controller: TextEditingController(),
      placeholder: 'Short Blue',
    ),
    verticalSpaceSmall,
    TradeInputField.shortBlue(
      controller: TextEditingController(),
      placeholder: 'Short Blue with Leading Icon',
      leading: Icon(Icons.home),
    ),
    verticalSpaceSmall,
    TradeText.body('Large Blue'),
    verticalSpaceSmall,
    TradeInputField.largeBlue(
      controller: TextEditingController(),
      placeholder: 'Large Blue',
    ),
    verticalSpaceMedium,
  ];

  List<Widget> get tradeCheckboxes => [
    TradeText.headline('Checkboxes'),
    verticalSpaceMedium,
    TradeCheckbox(isChecked: true, changed: (value){}),
    TradeCheckbox(isChecked: false, changed: (value){}),
    verticalSpaceMedium,
  ];
}