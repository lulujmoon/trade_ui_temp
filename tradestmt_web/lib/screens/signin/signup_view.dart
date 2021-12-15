import 'package:flutter/material.dart';
import 'package:trade_ui/trade_ui.dart';

import '../view.abs.dart';
import 'signup_viewmodel.dart';

class Signup extends View<SignupViewModel> {
  const Signup({required SignupViewModel viewModel, Key? key})
      : super.model(viewModel, key: key);

  @override
  _SignupState createState() => _SignupState(viewModel);
}

class _SignupState extends ViewState<Signup, SignupViewModel> {
  _SignupState(SignupViewModel viewModel) : super(viewModel);

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
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  children: [
                    TradeText.headingOne('Signup Page'),
                  ]
              )

          );
        });
  }
}