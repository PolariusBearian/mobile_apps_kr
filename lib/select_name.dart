import 'package:flutter/material.dart';

class Select_name extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => State_sn();
}

class State_sn extends State<Select_name> {
  String xname = '';
  String oname = '';
  final _controllerX = TextEditingController();
  final _controllerO = TextEditingController();

  _changeName() {
    setState(() => xname = _controllerX.text);
    setState(() => oname = _controllerO.text);
  }

  @override
  void initState() {
    super.initState();
    _controllerX.text = xname;
    _controllerX.addListener(_changeName);
    _controllerO.text = xname;
    _controllerO.addListener(_changeName);
  }

  @override
  void dispose() {
    _controllerX.dispose();
    _controllerO.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Выберите имена игроков",
            style: TextStyle(fontSize: 28),
          ),
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Имя игрока Х',style: TextStyle(fontSize: 32),),
                  new TextFormField(
                    controller: _controllerX,
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 32),
                  ),
                  Text('Имя игрока O',style: TextStyle(fontSize: 32),),
                  new TextFormField(
                    controller: _controllerO,
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 32),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/game',
                      arguments: [xname, oname]);
                },
                child: const Text(
                  'Готово',
                  style: TextStyle(fontSize: 28),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: const Text(
                  'Выход в главное меню',
                  style: TextStyle(fontSize: 28),
                ),
              )
            ],
          ),
        )));
  }
}
