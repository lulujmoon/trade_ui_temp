
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
    TradeText.body('largeDustBlue'),
    verticalSpaceSmall,
    TradeButton.largeLightBlue(
      title: 'Type 1',
      onTap: (){},
    ),
    verticalSpaceSmall,
    TradeText.body('largeBlue'),
    verticalSpaceSmall,
    TradeButton.largeBlue(
      title: 'Type 2',
      onTap: (){},
    ),
    verticalSpaceSmall,
    TradeText.body('shortGrey'),
    verticalSpaceSmall,
    TradeButton.shortGrey(
      title: 'Type 3',
      onTap: (){},
    ),
    verticalSpaceSmall,
    TradeText.body('shortBlue'),
    verticalSpaceSmall,
    TradeButton.shortBlue(
      title: 'Type 4',
      onTap: (){},
    ),
    verticalSpaceSmall,
    TradeText.body('extraLargeBlue'),
    verticalSpaceSmall,
    TradeButton.extraLargeBlue(
      title: 'Type 5',
      onTap: (){},
    ),
    verticalSpaceSmall,
    TradeText.body('shortNavy'),
    verticalSpaceSmall,
    TradeButton.shortNavy(
      title: 'Type 6',
      onTap: (){},
    ),

    verticalSpaceSmall,
    TradeText.body('send'),
    verticalSpaceSmall,
    TradeButton(
      onTap: (){},
      title: 'send',
      height: 50,
      width: 285,
      fillColor: primaryBlueColor1,
      borderColor: primaryBlueColor2,
      textStyle: bodyStyleBold.copyWith(color: whiteColor),
    ),

    verticalSpaceSmall,
    TradeText.body('shortWhite'),
    verticalSpaceSmall,
    TradeButton.shortWhite(
      title: 'Type 7',
      textColor: Colors.black,
      onTap: (){},
    ),
    verticalSpaceSmall,
    TradeText.body('shortWhiteV2'),
    verticalSpaceSmall,
    TradeButton.shortWhite(
      title: 'Type 8',
      textColor: primaryBlueColor1,
      onTap: (){},
    ),
    verticalSpaceSmall,
    TradeText.body('shortWhiteV3'),
    verticalSpaceSmall,
    TradeButton.shortWhite(
      title: 'Type 9',
      textColor: Colors.red,
      onTap: (){},
    ),







    verticalSpaceSmall,
    TradeText.body('Outline'),
    verticalSpaceSmall,
    // TradeButton.outline(
    //   title: 'Select location',
    //   leading: Icon(
    //     Icons.send,
    //     color: kcPrimaryColor,
    //   ),
    // ),
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
    verticalSpaceSmall,
  ];
}