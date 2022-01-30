import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class CaseWithCountersTwo extends StatelessWidget {
  const CaseWithCountersTwo({Key? key}) : super(key: key);

  @override
 
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Кейс 3.1',
     home: MyHomeCase(title: 'Кейс 3.1'),

    );
  }

}

class MyHomeCase extends StatefulWidget {
  const MyHomeCase({Key? key, required this.title}) : super(key: key);

  final String title;

 // get storage => null;
  @override
  State<MyHomeCase> createState() => _MyHomeCaseState();
}


class _MyHomeCaseState extends State<MyHomeCase> {

int _counter = 0;
//int _mycounter=0;
 

 Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<File> writeCounter(int counter) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString('$counter');
  }

  Future<int> readCounter() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      return int.parse(contents);
    } catch (e) {
      // If encountering an error, return 0
      return 0;
    }
  }


  void initState() {
    super.initState();
    _loadCounter();
  }

  //Loading counter value on start
  void _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
    });
  }

  //Incrementing counter after click
  void _incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }
  int _mycounter=0;
void initMyState() {

  super.initState();
  _loadMycounter();
}

//Loading counter value on start
void _loadMycounter() async {
   final prefs = await SharedPreferences.getInstance();
  setState(() {
    _mycounter = (prefs.getInt('mycounter') ?? 0 );
  });
}

  void _incrementMycounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _mycounter = (prefs.getInt('mycounter') ?? 0) + 1;
      prefs.setInt('mycounter', _mycounter);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Кейс 3.1')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: _incrementCounter,
                child: Text("Нажать"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ) ),
            const Text(
              'Количество нажатий красной кнопки:',
            ),
            Text(
              '$_counter',
              //style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: _incrementMycounter,
                child: Text("Нажать"),
            ),
            const Text(
              'Количество нажатий синей кнопки:',
            ),
            Text(
            //  '$_mycounter',
              '$_mycounter',
              //style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
