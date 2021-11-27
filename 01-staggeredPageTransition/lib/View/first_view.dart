import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  const FirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/');
        },
        child: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
