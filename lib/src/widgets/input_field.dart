
import 'package:flutter/material.dart';
import 'package:trade_ui/src/shared/app_colors.dart';

class TradeInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final bool password;
  //final Widget? trailing;
  //final void Function()? trailingTapped;
  final Color fillColor;
  final Color borderColor;
  final double width;
  final double height;
  final bool isLarge;


  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  TradeInputField({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    //this.trailing,
    //this.trailingTapped,
    this.password = false,
  })  : this.fillColor = whiteColor,
        this.borderColor = lightGreyColor2,
        this.width = 460,
        this.height = 50,
        this.isLarge = false;

  TradeInputField.mediumWhite({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.password = false,
  })  : this.fillColor = whiteColor,
        this.borderColor = lightGreyColor2,
        this.width = 460,
        this.height = 50,
        this.isLarge = false;

  TradeInputField.shortWhite({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.password = false,
  })  : this.fillColor = whiteColor,
        this.borderColor = lightGreyColor2,
        this.width = 315,
        this.height = 50,
        this.isLarge = false;

  TradeInputField.mediumBlue({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.password = false,
  })  : this.fillColor = lightBlueColor3,
        this.borderColor = dustBlueColor1,
        this.width = 470,
        this.height = 50,
        this.isLarge = false;

  TradeInputField.shortBlue({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.password = false,
  })  : this.fillColor = lightBlueColor3,
        this.borderColor = dustBlueColor1,
        this.width = 315,
        this.height = 50,
        this.isLarge = false;

  TradeInputField.largeBlue({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.password = false,
  })  : this.fillColor = lightBlueColor3,
        this.borderColor = dustBlueColor1,
        this.width = 470,
        this.height = 200,
        this.isLarge = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        controller: controller,
        style: TextStyle(height: 1, fontSize: 15,),
        obscureText: password,
        maxLines: isLarge?20:1,
        decoration: InputDecoration(
          label: !isLarge? Text(placeholder) : null,
          hintText: isLarge? placeholder: null,
          contentPadding: isLarge? const EdgeInsets.symmetric(vertical: 20, horizontal: 20) : const EdgeInsets.symmetric(horizontal: 20) ,
          filled: true,
          fillColor: fillColor,
          prefixIcon: leading,
          floatingLabelStyle: TextStyle(color: primaryBlueColor),

          /*
          suffixIcon: trailing != null
              ? GestureDetector(
            onTap: trailingTapped,
            child: trailing,
          )
              : null,
          */
          border: circularBorder.copyWith(borderSide: BorderSide(color: borderColor),),
          errorBorder: circularBorder.copyWith(borderSide: BorderSide(color: Colors.red),),
          focusedBorder: circularBorder.copyWith(borderSide: BorderSide(color: primaryBlueColor),),
          enabledBorder: circularBorder.copyWith(borderSide: BorderSide(color: borderColor),),
        ),
      ),
    );
  }
}