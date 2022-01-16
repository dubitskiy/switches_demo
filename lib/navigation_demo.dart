
import 'package:flutter/material.dart';

class NavigationDemo extends StatefulWidget {
  const NavigationDemo({Key? key}) : super(key: key);

  @override
  _NavigationDemoState createState() => _NavigationDemoState();
}

class _NavigationDemoState extends State<NavigationDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/contacts': (context) => const SecondScreen(),
           },
    );
  }
}

Widget navDrawer(context) => Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white10,
            ),
            child: Container(
              height: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 40,
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(50.0))),
                      child: Image.network(
                          "https://dstom4.ru/wp-content/uploads/2016/05/logo.png"),
                    ),
                        const Text(
                        "Санкт-Петербургское государственное бюджетное учреждение здравоохранения",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF9AC100),
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        )),
                    const Divider(),

                    const Text("Навигация")
                  ]),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.one_k),
            title: const Text(
              "Главная",
              style: TextStyle(
                color: Color(0xFFfd8505),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.one_k),
            title: const Text("Контакты"),
            onTap: () {
              Navigator.pushNamed(context, '/contacts');
            },
          ),

          Divider(),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: const Text("Профиль"),
          ),
              ],
      ),
    );
//class BottomNavigationBar extends StatefulWidget {
//  const BottomNavigationBar({Key? key}) : super(key: key);

 // @override
 // _BottomNavigationBarState createState() {
 //   return _BottomNavigationBarState();
 // }
// }
/* ??? ошибка items
class _BottomNavigationBarState extends State<BottomNavigationBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: const BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }

}
*/
class MainScreen extends StatelessWidget {

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        //TextButton.styleFrom(primary:Theme.of(context).colorScheme.onPrimary);
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.background);
    return Scaffold(
      //appBar: AppBar(title: const Text('Главная'),),
      appBar: AppBar(
        //title: Text ("Demo AppBar"),
        backgroundColor: const Color(0xFFfd8505),
        actions: <Widget>[
          IconButton(
              tooltip: "Телефоны",
              onPressed: () {
                Navigator.pushNamed(context, '/contacts');
              },
              icon: Icon(Icons.phone)),
          IconButton(
              tooltip: "Галерея",
              onPressed: () {},
              icon: Icon(Icons.add_a_photo_outlined)),
          IconButton(
              tooltip: "Поиск", onPressed: () {}, icon: Icon(Icons.zoom_out)),
          TextButton(
            onPressed: () {},
            child: const Text("Детям"),
            style: buttonStyle,
          )
        ],
      ),
      drawer: navDrawer(context),
      body: Center(child: Text("Главная странмца")),
      //body: Center(
      // child: _widgetOptions.elementAt(_selectedIndex),
      //),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],

      ),
    );
  }
}



class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFfd8505),
      appBar: AppBar(
        //backgroundColor: Color(0x877561),
        backgroundColor: Color(0xFFfd8505),
        title: const Text('Контакты'),
      ),
      drawer: navDrawer(context),
      body: Center(child: Text("Контакты")),
    );
  }
}


