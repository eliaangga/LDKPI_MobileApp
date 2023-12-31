import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  final Future<void> loadingFuture;

  const LoadingPage({
    required this.loadingFuture,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
        future: loadingFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
