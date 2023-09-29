import 'package:flutter/material.dart';

class munshaib extends StatelessWidget {
  const munshaib({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('maunshaib')),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'pdf munshaib',
            style: TextStyle(fontSize: 50),
          ),
        ],
      )),
    );
  }
}
