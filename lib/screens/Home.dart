import 'package:flutter/material.dart';
import '../widgets/ItemsList.dart';

// Home widget - Stateful
class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
    this.title = 'Loading ...',
    this.description = 'Loading ...',
  }) : super(key: key);

  // state: title, description
  final String title;
  final String description;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Layout widgets
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ItemsList(),
            Text(widget.description),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.attach_money),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
