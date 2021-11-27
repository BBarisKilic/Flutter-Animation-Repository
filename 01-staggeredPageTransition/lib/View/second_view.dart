import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  static const String id = '/secondView';

  final Animation<double> transitionAnimation;

  const SecondView({
    Key? key,
    required this.transitionAnimation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: AnimatedBuilder(
              animation: transitionAnimation,
              builder: (BuildContext context, Widget? child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: const Offset(0, 0),
                  ).animate(
                    CurvedAnimation(
                      parent: transitionAnimation,
                      curve: const Interval(0.0, 0.5,
                          curve: Curves.easeInOutCubic),
                    ),
                  ),
                  child: child,
                );
              },
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: AnimatedBuilder(
              animation: transitionAnimation,
              builder: (BuildContext context, Widget? child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(-1, 0),
                    end: const Offset(0, 0),
                  ).animate(
                    CurvedAnimation(
                      parent: transitionAnimation,
                      curve: const Interval(0.5, 1.0,
                          curve: Curves.easeInOutCubic),
                    ),
                  ),
                  child: child,
                );
              },
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pop();
        },
        label: const Text('Navigate Back'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
