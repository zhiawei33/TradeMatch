import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradematch/utilities/themes.dart';
import 'package:tradematch/utilities/setup.dart';
import 'package:tradematch/viewModel/provider.dart';

class navigationBar extends ConsumerWidget {
  const navigationBar({super.key});

  Widget logo() {
    return Container(
      height: 100,
      width: 100,
      color: Colors.black,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: layoutDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          logo(),
          navTabs(),
          Container(),
        ],
      ),
    );
  }
}

class navTabs extends ConsumerWidget {
  const navTabs({super.key});

  Widget navButtons(String name, ref) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: TextButton(
            onPressed: () {
              ref.read(mainViewProvider.notifier).state = name;
            },
            child: Text(name, style: navigationTabTextStyle())));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navButtons('HOME', ref),
        navButtons('Add Adverts', ref),
        navButtons('Contractors', ref),
        navButtons('Jobs', ref),
      ],
    );
  }
}
