
import 'package:flutter/material.dart';
import 'package:switches_demo/utils/dsp_theme.dart';
import '../utils/strings.dart';



class ThemeDemoApp extends StatelessWidget {
  const ThemeDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: dspTheme (),
      //theme: globalTheme(),
      home: ThemeDemoScreen(

      ),
    );
  }
}

class ThemeDemoScreen extends StatefulWidget {
  const ThemeDemoScreen({Key? key}) : super(key: key);

  @override

  _ThemeDemoScreenState createState() => _ThemeDemoScreenState();
}

class _ThemeDemoScreenState extends State<ThemeDemoScreen> {
  double _currentSliderValue = 20;
  bool _isDarkTheme = false;

  Widget _navigationDraw() =>

      Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(

              decoration: const BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
              child: Container(

                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 100,
                        decoration: const BoxDecoration(
                          borderRadius:
                          BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: Image.network(
                            "https://dstom4.ru/wp-content/uploads/2016/05/logo.png")
                    ),
                    const Text("Навигация")
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.one_k),
              title: const Text("Каталог"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.one_k),
              title: const Text("Корзина"),
              onTap: () {},
            ),
            const Divider(),
            const Padding(padding:
            EdgeInsets.only(left: 10),
              child: Text("Профиль",
                style: TextStyle(
                    color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.one_k),
              title: const Text("Настройки"),
              onTap: () {},
            ),
          ],
        ),
      );

//}


  PreferredSizeWidget _appBar() =>
      AppBar(
        title: Text("Промо темы"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: "Уведомления",
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.airplanemode_active),
            tooltip: "Уведомления",
            onPressed: () {},
          ),
        ],
      );

  @override

  Widget build(BuildContext context) {
    return Scaffold (
      appBar: _appBar(),
      drawer: _navigationDraw(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text("Заголовок", style: Theme.of(context).textTheme.headline6,),
              Container(
                height: 100,
                color: Theme.of(context).colorScheme.secondary,
              ),
              Row(
                children: const [
                  Text("Логин"),
                  Expanded(child: TextField()),

                ],
              ),

            Row(
            children: const [
              Text("Логин"),
              Expanded(child: TextField()),
            ],
            ),
            ElevatedButton (onPressed: () {},child: Text ("Войти")),
            Text(Strings.longBodyText),
            Slider(
                value: _currentSliderValue,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
        ),
          SwitchListTile(
              title: Text ("Темная тема"),
              value: _isDarkTheme,
              onChanged: (val) {
                setState(() {
                  _isDarkTheme = !_isDarkTheme;
                  if (_isDarkTheme) {}
                });
              }),
          ],
        ),
        ),
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon (Icons.add),
        ),
        bottomNavigationBar:BottomNavigationBar (
            items: const [
          BottomNavigationBarItem (
        icon: Icon(Icons.add), label: "Профиль"),
        BottomNavigationBarItem (
        icon: Icon(Icons.add), label: "Профиль"),
        BottomNavigationBarItem (
        icon: Icon(Icons.add), label: "Профиль"),

        ],
    ),

    );
         }
        }

