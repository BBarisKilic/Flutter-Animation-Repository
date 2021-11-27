import 'package:flutter/material.dart';

import 'View/first_view.dart';

void main() => runApp(const StaggeredPageTransitionDemo());

class StaggeredPageTransitionDemo extends StatelessWidget {
  const StaggeredPageTransitionDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Page Transitions',
      home: const FirstView(),
      theme: ThemeData.light().copyWith(
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.deepOrange,
        ),
      ),
    );
  }
}
