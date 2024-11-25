import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradematch/utilities/themes.dart';
import 'package:tradematch/utilities/setup.dart';
import 'package:tradematch/viewModel/provider.dart';

class navigationBar extends ConsumerWidget {
  const navigationBar({super.key});

  Widget logo() {
    return Container(
        height: 150,
        margin: EdgeInsets.only(left: 300, right: 50),
        child: Row(
          children: [
            Icon(Icons.house, size: 70),
            Text(
              'TradeMatch.care',
              style: logoTextStyle(),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: layoutDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          logo(),
          navTabs(),
          const Spacer(),
          profileTab(),
        ],
      ),
    );
  }
}

class navTabs extends ConsumerWidget {
  const navTabs({super.key});

  Widget navButtons(String name, ref) {
    final selected = ref.watch(mainViewProvider);
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextButton(
        onPressed: () {
          ref.read(mainViewProvider.notifier).state = name;
        },
        child: Text(name,
            style: selected == name
                ? navigationSelectedTabTextStyle()
                : navigationTabTextStyle()),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      child: Row(
        children: navigation_tabs.map((tab) => navButtons(tab, ref)).toList(),
      ),
    );
  }
}

class profileTab extends ConsumerWidget {
  const profileTab({super.key});

  Widget profileIcon() {
    return Container(
      margin: EdgeInsets.only(right: 30),
      height: 50,
      width: 50,
      child: Icon(
        Icons.person_2,
        size: 50,
      ),
    );
  }

  Widget profileDropdown(ref) {
    String dropdownValue = ref.watch(dropdownValueProvider);
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: profileTextStyle(),
      onChanged: (String? value) {
        ref.read(dropdownValueProvider.notifier).state = value!;
      },
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(right: 50),
      child: Row(
        children: [profileIcon(), profileDropdown(ref)],
      ),
    );
  }
}
