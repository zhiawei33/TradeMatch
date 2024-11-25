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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          logo(),
          navTabs(),
          profileTab(),
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
        navButtons('Home', ref),
        navButtons('Add Adverts', ref),
        navButtons('Contractors', ref),
        navButtons('Jobs', ref),
      ],
    );
  }
}

class profileTab extends ConsumerWidget {
  const profileTab({super.key});

  Widget profileIcon() {
    return Container(
      height: 50,
      width: 50,
      color: Colors.amberAccent,
    );
  }

  Widget profileDropdown() {
    String dropdownValue = options.first;
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: profileTextStyle(),
      onChanged: (String? value) {
        dropdownValue = value!;
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
    return Row(
      children: [profileIcon(), profileDropdown()],
    );
  }
}
