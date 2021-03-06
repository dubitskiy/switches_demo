import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary:Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar (
          title: Text ("Demo AppBar"),
              actions: <Widget> [
                IconButton(
                    tooltip: "Телефон",
                    onPressed: () {}, icon: Icon(Icons.phone)),
                IconButton(
                    tooltip: "Баланс",
                    onPressed: () {}, icon: Icon(Icons.account_balance)),
                TextButton(onPressed: () {}, child: Text ("Profile"),
                  style: buttonStyle,
                )
          ],
        ),
          body: Center(child: Text ("Контент")),
        ),
        );


  }
}
