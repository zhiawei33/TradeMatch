import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradematch/utilities/themes.dart';
import 'package:tradematch/utilities/setup.dart';
import 'component/home_connect.dart';
import 'component/home_advert.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: layoutDecoration(),
            margin: const EdgeInsets.only(top: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ConnectectionHeader(), ConnectionContainer()],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: AdvertViewDecoration(),
            margin: const EdgeInsets.only(top: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [AdvertHeader(), AdvertPicture()],
            ),
          ),
        ),
      ],
    );
  }
}
