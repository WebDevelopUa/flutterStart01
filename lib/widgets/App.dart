import 'package:flutter/material.dart';
import 'package:flutter_start_01/screens/Home.dart';
import 'package:flutter_start_01/screens/ItemDetail.dart';
// import 'package:flutter_start_01/widgets/ItemsList.dart';

// import '../screens/Home.dart';

// root widget
class App extends StatelessWidget {
  // App theme
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Start 001',
      theme: ThemeData(primarySwatch: Colors.teal),
      // home: HomePage(title: 'Home Page', description: 'x100'),
      onGenerateRoute: (RouteSettings settings) {
        print('onGenerateRoute: settings ... ');
        print(settings);

        if (settings.name == '/') {
          print('if settings.name == / ... ItemsList()');

          return MaterialPageRoute(
            builder: (context) {
              // return ItemsList();
              return HomePage(title: 'Home', description: 'x100');
            },
          );
        } else {
          print('else settings.name not / ... ItemDetail(item: item)');
          print(settings.name);

          return MaterialPageRoute(
            builder: (context) {
              final item = settings.name;

              return ItemDetail(item: item);
                },
          );
        }
      },
    );
  }
}
