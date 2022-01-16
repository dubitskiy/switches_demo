import 'package:flutter/material.dart';

class SwitchesDemoScreen extends StatefulWidget {
  const SwitchesDemoScreen({Key? key}) : super(key: key);

  @override
  _SwitchesDemoScreenState createState() => _SwitchesDemoScreenState();
}
enum KindOfDough {thin, plain}
class _SwitchesDemoScreenState extends State<SwitchesDemoScreen> {
  bool _checked = false;
  bool _confirmAgreement = true;
  KindOfDough? _kindOfDough = KindOfDough.plain;
  
  void _onCheckedChange(bool? val) {
    setState(() {
      _checked = !_checked;
    });
  }

  void _onKindOfDough (KindOfDough? value) {
    setState(() {
      _kindOfDough = value;
    });
  }
  @override
  //
//  createState();

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          /*child: Column (children: [
              SizedBox(width: 232, height: 123, child: image(image:AssetImage(assets/pizza.png)),)
            ],) */
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(value: _checked, onChanged: _onCheckedChange),
                  Text("Выбор"),
                ],
              ),
              CheckboxListTile(
                  title: Text('Принять условия соглашения'),
                  value: _confirmAgreement,
                  onChanged: (val) {
                    setState(() {
                      _confirmAgreement = !_confirmAgreement;
                    });
                  }),
              Row(
                children: [
                  Switch(value: _checked, onChanged: _onCheckedChange),
                  const Text("Вкл")
                ],
              ),
              SwitchListTile(
                  title: const Text("Вкл"),
                  value: _checked,
                  onChanged: _onCheckedChange),
              const Text("Выберите параметры:"),
              RadioListTile<KindOfDough> (
                  title: const Text("Обычное тесто"),
                  value: KindOfDough.plain,
                  groupValue: _kindOfDough,
                  onChanged: _onKindOfDough,),
              RadioListTile<KindOfDough> (
                title: const Text("Тонкое тесто"),
                value: KindOfDough.thin,
                groupValue: _kindOfDough,
                onChanged: _onKindOfDough,),

                       ],
          ),
        ),
      ),
    );
  }
}
