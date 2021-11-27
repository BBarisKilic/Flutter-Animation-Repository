import 'package:flutter/material.dart';

import 'View/first_view.dart';
import 'View/second_view.dart';

void main() => runApp(const StaggeredPageTransitionDemo());

class StaggeredPageTransitionDemo extends StatelessWidget {
  const StaggeredPageTransitionDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Page Transitions',
      debugShowCheckedModeBanner: false,
      home: const FirstView(),
      onGenerateRoute: _generateRoute,
      theme: ThemeData.light().copyWith(
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.deepOrange,
        ),
      ),
    );
  }

  Route<dynamic> _generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SecondView.id:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return SecondView(
              transitionAnimation: animation,
            );
          },
          transitionDuration: const Duration(seconds: 1),
        );
      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('ERROR'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Page not found!'),
        ),
      );
    });
  }
}
