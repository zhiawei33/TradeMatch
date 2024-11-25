import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradematch/viewModel/provider.dart';
import 'package:tradematch/view/top_view/navigation_view.dart';
import 'package:tradematch/view/main_view/home_view.dart';
import 'package:tradematch/view/main_view/advert_view.dart';

class Layout_viewModel extends ConsumerWidget {
  const Layout_viewModel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainView = ref.watch(mainViewProvider);

    Widget getMainView(String viewName) {
      switch (viewName) {
        case 'HOME':
          return HomeView();
        case 'Add Adverts':
          return AdvertView();
        case 'Contractors':
          return SizedBox();
        case 'Jobs':
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Scaffold(
        body: Container(
      child: Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: navigationBar(),
          ),
          Expanded(
            flex: 6,
            child: getMainView(mainView),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
        ],
      )),
    ));
  }
}
