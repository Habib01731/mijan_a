// ignore_for_file: prefer_const_constructors, unused_import, await_only_futures

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mijan/mijan.dart';
import 'package:mijan/munshaib.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Sorof')),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(
                  height: 200,
                  child: Card(
                    child: Image.network(
                      'https://s3-ap-southeast-1.amazonaws.com/rokomari110/ProductNew20190903/260X372/Mizanusorof_o_Munshaib_Mizan-Islamia_Kutubkhana-a0ad3-236996.jpg',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mijan(),
                          ));
                    },
                    child: Card(
                      child: Text(
                        'MIJAN',
                        style: TextStyle(fontSize: 80),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: () {
                      addDataToDB();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => munshaib(),
                          ));
                    },
                    child: Card(
                      child: Text(
                        'MUNSHAIB',
                        style: TextStyle(
                          fontSize: 60,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}

Future<void> addDataToDB() async {
  var collection = await FirebaseFirestore.instance.collection('bahas');

  Map<String, dynamic> quizMap = {
    'question': 'what is the capitul of bangladesh',
    'answerList': [
      {
        'answer': 'khulna',
        'iscorrect': 'false',
      },
      {
        'answer': 'khulna',
        'iscorrect': 'false',
      },
      {
        'answer': 'khulna',
        'iscorrect': 'false',
      },
      {
        'answer': 'khulna',
        'iscorrect': 'false',
      },
    ]
  };
  collection.add(quizMap);
}
