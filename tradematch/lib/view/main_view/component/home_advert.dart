import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradematch/utilities/themes.dart';
import 'package:tradematch/utilities/setup.dart';
import 'package:tradematch/viewModel/provider.dart';

class AdvertPicture extends StatelessWidget {
  const AdvertPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 500,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/advert.png'), fit: BoxFit.cover),
      ),
    );
  }
}

class AdvertHeader extends ConsumerWidget {
  const AdvertHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(right: 50, left: 300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ready to Advertise Yourself?',
            style: MainHeaderTextStyle(),
          ),
          Text(
            'Connect with top contractors or jobs and get your project started today.',
            style: SubHeaderATextStyle(),
          ),
          Container(
              margin: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                style: AdvertButton(),
                onPressed: () {
                  ref.read(mainViewProvider.notifier).state = 'Add Adverts';
                },
                child: Text(
                  'Post an Advert',
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
