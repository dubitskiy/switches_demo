import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TextDemoScreen extends StatelessWidget {
  const TextDemoScreen ({Key? key}) : super(key: key);

  get o => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Scaffold (
        body: Center (
          child: Column(
            children: [
              Container(
                width: 150,
                height: 150,
                margin: const EdgeInsets.only(top: 50,),
                decoration: BoxDecoration (
                    color: Colors.deepOrangeAccent,
                    border: Border.all (color: Colors.lime, width:3)
                ),
                alignment: Alignment.center,
                child: const Text ("Федор Дубицкий - лучший из людей",
                  overflow: TextOverflow.clip,
                  softWrap: true,
                  style: TextStyle(color: Colors.white, fontSize: 16),),
              ),
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 50,),
                decoration: BoxDecoration (
                    color: Colors.blue,
                    border: Border.all (color: Colors.blueAccent, width:3)
                ),
                alignment: Alignment.center,
                child: const Text.rich (
                  TextSpan(text: "у Андрея Дубицкого ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      children: <TextSpan>[
                        TextSpan(text: 'самая', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: ' красивая жена', style: TextStyle(fontStyle: FontStyle.italic)),
                      ]

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
