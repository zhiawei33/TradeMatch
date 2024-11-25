import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradematch/utilities/themes.dart';
import 'package:tradematch/utilities/setup.dart';
import 'package:tradematch/viewModel/provider.dart';

class ConnectionContainer extends ConsumerWidget {
  const ConnectionContainer({super.key});

  Widget connectionSelection(ref) {
    return Container(
      decoration: layoutDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButton(
              onPressed: () {
                ref.read(connectViewProvider.notifier).state = 'Jobs';
              },
              child: Row(
                children: [
                  Icon(Icons.work),
                  Text(
                    'Jobs',
                    style: ConnectionSelectionHeaderTextStyle(),
                  )
                ],
              )),
          TextButton(
              onPressed: () {
                ref.read(connectViewProvider.notifier).state = 'Contractors';
              },
              child: Row(
                children: [
                  Icon(Icons.person),
                  Text(
                    'Contractors',
                    style: ConnectionSelectionHeaderTextStyle(),
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget connectionProfile(label, index) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          '$label ${index + 1}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
      ),
    );
  }

  Widget connectionGridView(ref) {
    final _connect = ref.watch(connectViewProvider);
    return Container(
      width: 800,
      height: 400,
      padding: const EdgeInsets.all(10),
      decoration: ConnectionDecoration(),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 10, // Spacing between columns
          mainAxisSpacing: 10, // Spacing between rows
          childAspectRatio: 1.5, // Aspect ratio for each grid item
        ),
        itemCount: 9, // Total number of items
        itemBuilder: (context, index) {
          return connectionProfile(_connect, index);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [connectionSelection(ref), connectionGridView(ref)],
      ),
    );
  }
}

class ConnectectionHeader extends StatelessWidget {
  const ConnectectionHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      decoration: layoutDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Make a Connection',
            style: MainHeaderTextStyle(),
          ),
          Text(
            'Find a Job or Contractors',
            style: SubHeaderATextStyle(),
          )
        ],
      ),
    );
  }
}
