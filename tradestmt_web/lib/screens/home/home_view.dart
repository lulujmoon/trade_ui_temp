import 'package:flutter/material.dart';
import 'package:trade_ui/trade_ui.dart';

import '../view.abs.dart';
import 'home_viewmodel.dart';

class Home extends View<HomeViewModel> {
  const Home({required HomeViewModel viewModel, Key? key})
    : super.model(viewModel, key: key);

  @override
  _HomeState createState() => _HomeState(viewModel);
}

class _HomeState extends ViewState<Home, HomeViewModel> {
  _HomeState(HomeViewModel viewModel) : super(viewModel);

  @override
  void initState() {
    super.initState();
    listenToRoutesSpecs(viewModel.routes);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HomeState>(
        stream: viewModel.state,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Container();

          final state = snapshot.data!;

          return Scaffold(
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              children: [
                TradeText.headingOne('Home Page'),
                verticalSpaceLarge,
                TradeText.headingOne('${state.map?['account'] ?? ''}'),
              ]
            )
          );
        });
  }

}