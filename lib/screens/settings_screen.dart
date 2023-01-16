import 'dart:math';
import 'package:flutter/material.dart';
import 'package:preferences_app_plantilla/screens/home_screen.dart';

import '../preferences/preferences.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'settings';

  SettingsScreen({Key? key}) : super(key: key);

  int ultras = 0;
  int legendarios = 0;
  int epicos = 0;
  int comunes = 0;

  @override
  Widget build(BuildContext context) {
    Random random = new Random();

    //variables antiguas (auxiliares)
    int aux1 = Preferences.ultras;
    int aux2 = Preferences.legendarios;
    int aux3 = Preferences.epicos;
    int aux4 = Preferences.comunes;

    //variables random actuales
    ultras = random.nextInt(3);
    legendarios = random.nextInt(5);
    epicos = random.nextInt(10);
    comunes = random.nextInt(50);

    //variables actualizadas
    Preferences.ultras = ultras + aux1;
    Preferences.legendarios = legendarios + aux2;
    Preferences.epicos = epicos + aux3;
    Preferences.comunes = comunes + aux4;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),
          title: const Text('Has abierto un Cofre!'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Objetos conseguidos en este cofre...',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w300,
                        color: Colors.amber)),
                Divider(),
                Divider(),
                Text(
                  'Objetos ultra: + ${ultras = ultras + random.nextInt(1)}',
                ),
                Divider(),
                Text(
                    'Objetos legendarios: + ${legendarios = random.nextInt(5)}'),
                Divider(),
                Text('Objetos epicos: +  ${epicos = random.nextInt(10)}'),
                Divider(),
                Text('Objetos comunes: + ${comunes = random.nextInt(50)}'),
                Divider()
              ],
            ),
          ),
        ));
  }
}
