import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black12,
        margin: const EdgeInsets.only(bottom: 40.0),
        padding: const EdgeInsets.all(20.0),
        height: 200.0,
        child: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    padding: const EdgeInsets.all(10.0),
                  ),
                  onPressed: () {},
                  child: const Text('Dart')),
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    padding: const EdgeInsets.all(10.0),
                  ),
                  onPressed: () {},
                  child: const Text('TypeScript')),
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    padding: const EdgeInsets.all(10.0),
                  ),
                  onPressed: () {},
                  child: const Text('JavaScript'))
            ],
          ),
        ));
  }
}
