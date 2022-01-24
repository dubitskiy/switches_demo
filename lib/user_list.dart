import 'package:flutter/material.dart';
class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyListItem_(),
      ),
    );
  }
}

//import 'listview_screen.dart';
class User {
  String name;
  String phone;
  User(this.name, this.phone);
}
//for  (int i = 1; i<21; i++) {}

final List <User> users = <User> [
  User("Пожар",'01'),
  User("Милиция",'02'),
  User("Скорая",'03'),
  User("Газ",'04'),
  User("Пожар",'101'),
  User("Милиция",'102'),
  User("Скорая",'103'),
  User("Газ",'104'),
  User("Справка",'122'),
  User("СОС",'112'),
  User("Прививка",'212'),
  User("ЖКХ",'004'),
];

//void main() {}
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyListItem_(),
      ),
    );
  }

  class MyListItem_ extends StatefulWidget {
  const MyListItem_({Key? key}) : super(key: key);

  @override
  _MyListItem_State createState() => _MyListItem_State();
  }

  class _MyListItem_State extends State<MyListItem_> {
    int _selectedIndex = 0;

    @override
    Widget build(BuildContext context) {

      return ListView.builder(
        scrollDirection: Axis.vertical,
        //padding: const EdgeInsets.all(8),
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(3),
            decoration:
            BoxDecoration(color: Colors.lightBlueAccent, border: Border.all()),


            child: ListTile(

              title: Text(users[index].name, style: const TextStyle (fontSize: 22),),
              subtitle: Text(users[index].phone, style: const TextStyle (fontSize: 24, color: Colors.white),) ,
              selected: index == _selectedIndex,
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          );
        },
      );
    }
  }

