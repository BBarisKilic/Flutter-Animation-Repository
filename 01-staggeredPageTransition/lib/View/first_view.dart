import 'package:flutter/material.dart';
import 'package:staggered_page_transition/View/second_view.dart';

class FirstView extends StatelessWidget {
  const FirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(SecondView.id);
        },
        child: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
