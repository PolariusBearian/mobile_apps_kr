import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class main_menu extends StatelessWidget {
  main_menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4f96f),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Крестики - нолики",style: TextStyle(fontSize: 36),),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/select_name');
                },
                child: const Text(
                  'Начать игру',
                  style: TextStyle(fontSize: 32),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: const Text(
                  'Выход из приложения',
                  style: TextStyle(fontSize: 32),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
