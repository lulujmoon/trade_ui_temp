import 'package:flutter/material.dart';
import 'package:trade_ui/trade_ui.dart';

import '../view.abs.dart';
import 'signin_viewmodel.dart';

class Signin extends View<SigninViewModel> {
  const Signin({required SigninViewModel viewModel, Key? key})
      : super.model(viewModel, key: key);

  @override
  _SigninState createState() => _SigninState(viewModel);
}

class _SigninState extends ViewState<Signin, SigninViewModel> {
  _SigninState(SigninViewModel viewModel) : super(viewModel);

  @override
  void initState() {
    super.initState();
    listenToRoutesSpecs(viewModel.routes);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: viewModel.state,
        builder: (context, snapshot) {
          return Scaffold(
              body: ListView(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  children: [
                    TradeText.headingOne('Signin Page'),
                    ...signinInputFields,
                    ...signinButtons
                  ]));
        });
  }

  List<Widget> get signinInputFields => [
    verticalSpaceLarge,
    TradeInputField(
      leading: Icon(Icons.login),
      controller: viewModel.accountController,
      placeholder: "Enter Your Account",
    ),
    verticalSpaceRegular,
    TradeInputField(
      leading: Icon(Icons.admin_panel_settings_sharp),
      controller: viewModel.passwordController,
      placeholder: "Enter Your Password",
    ),
  ];

  List<Widget> get signinButtons => [
    verticalSpaceLarge,
    TradeButton(
      onTap: viewModel.routeToHome,
      title: 'SIGN IN',
    ),
    verticalSpaceRegular,
    TradeButton(
      title: 'SIGN UP',
    ),
    verticalSpaceRegular,
    TradeButton(
        onTap: viewModel.routeToDesignSystem, title: 'Design System'),
  ];
}
