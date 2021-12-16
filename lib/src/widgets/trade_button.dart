import 'package:flutter/material.dart';
import 'package:trade_ui/src/shared/app_colors.dart';
import 'package:trade_ui/src/shared/styles.dart';

class TradeButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final double width;
  final double height;
  final Color fillColor;
  final Color borderColor;
  final TextStyle textStyle;
  final Color? textColor;
  final bool isRound;

  TradeButton({
    Key? key,
    required this.title,
    this.onTap,
    this.width = 100,
    this.height = 100,
    this.fillColor = primaryBlueColor1,
    this.borderColor = primaryBlueColor1,
    this.textStyle = bodyStyle,
    this.textColor,
    this.isRound = false,
  })  : super(key: key);

  TradeButton.largeLightBlue({
    Key? key,
    required this.title,
    this.onTap,
    this.textColor,
  })  : this.height = 40,
        this.width = 310,
        this.fillColor = lightBlueColor4,
        this.borderColor = dustBlueColor2,
        this.textStyle = bodyStyle.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        isRound = false,
        super(key: key);

  TradeButton.largeBlue({
    Key? key,
    required this.title,
    this.onTap,
    this.textColor,
  })  : this.height = 40,
        this.width = 310,
        this.fillColor = primaryBlueColor1,
        this.borderColor = primaryBlueColor2,
        this.textStyle = bodyStyle.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        isRound = false,
        super(key: key);

  TradeButton.shortGrey({
    Key? key,
    required this.title,
    this.onTap,
    this.textColor,
  })  : this.height = 50,
        this.width = 140,
        this.fillColor = lightBlueColor2,
        this.borderColor = dustBlueColor4,
        this.textStyle = bodyStyleBold.copyWith(color: dustBlueColor3),
        isRound = false,
        super(key: key);

  TradeButton.shortBlue({
    Key? key,
    required this.title,
    this.onTap,
    this.textColor,
  })  : this.height = 50,
        this.width = 140,
        this.fillColor = primaryBlueColor1,
        this.borderColor = primaryBlueColor2,
        this.textStyle = bodyStyleBold.copyWith(color: whiteColor),
        isRound = false,
        super(key: key);

  TradeButton.extraLargeBlue({
    Key? key,
    required this.title,
    this.onTap,
    this.textColor,
  })  : this.height = 70,
        this.width = 460,
        this.fillColor = primaryBlueColor1,
        this.borderColor = primaryBlueColor2,
        this.textStyle = bodyStyleBold.copyWith(color: whiteColor, fontSize: 20),
        isRound = false,
        super(key: key);

  TradeButton.shortNavy({
    Key? key,
    required this.title,
    this.onTap,
    this.textColor,
  })  : this.height = 50,
        this.width = 140,
        this.fillColor = navyColor1,
        this.borderColor = navyColor2,
        this.textStyle = bodyStyleBold.copyWith(color: whiteColor),
        isRound = false,
        super(key: key);

  TradeButton.shortWhite({
    Key? key,
    required this.title,
    this.onTap,
    this.textColor,
  })  : this.height = 50,
        this.width = 140,
        this.fillColor = whiteColor,
        this.borderColor = lightGreyColor2,
        this.textStyle = bodyStyleBold,
        isRound = false,
        super(key: key);

  TradeButton.roundLargeWhite({
    Key? key,
    required this.title,
    this.onTap,
  })  : this.height = 35,
        this.width = 140,
        this.textColor = Colors.black,
        this.fillColor = whiteColor,
        this.borderColor = lightGreyColor2,
        this.textStyle = bodyStyle,
        this.isRound = true,
        super(key: key);

  TradeButton.roundShort({
    Key? key,
    required this.title,
    this.onTap,
    this.fillColor = whiteColor,
    this.textColor = Colors.black,
    this.borderColor = lightGreyColor2,
  })  : this.height = 30,
        this.width = 80,
        this.textStyle = captionStyle,
        this.isRound = true,
        super(key: key);

  // const TradeButton.outline({
  //   required this.title,
  //   this.onTap,
  //   this.leading,
  // })  : disabled = false,
  //       busy = false,
  //       outline = true;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      child: Text(title, style: textStyle.copyWith(color: textColor), ),
      style: OutlinedButton.styleFrom(
        fixedSize: Size(width, height),
        backgroundColor: fillColor,
        side: BorderSide(width: 1.0, color: borderColor),
        shape: RoundedRectangleBorder(borderRadius: isRound ? BorderRadius.circular(20) : BorderRadius.circular(5)),

      ),
    );
  }
}
