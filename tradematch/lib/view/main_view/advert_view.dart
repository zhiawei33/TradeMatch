import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradematch/utilities/themes.dart';
import 'package:tradematch/utilities/setup.dart';

class AdvertView extends ConsumerWidget {
  const AdvertView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        decoration: layoutDecoration(),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.deepPurple,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.deepOrangeAccent,
              ),
            )
          ],
        ));
  }
}
