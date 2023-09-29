import 'package:flutter/material.dart';

class mijan extends StatelessWidget {
  const mijan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mijan')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'pdf mijan',
            style: TextStyle(fontSize: 50),
          ),
        ],
      )),
    );
  }
}
