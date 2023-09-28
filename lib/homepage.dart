// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sorof')),
      ),
      body: Center(
          child: Text(
        'alhamdullih',
        style: TextStyle(fontSize: 50),
      )),
    );
  }
}
