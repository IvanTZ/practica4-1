import 'package:flutter/material.dart';

import '../preferences/preferences.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.indeterminate_check_box),
            tooltip: "Esto es un cofre, aunque no lo parezca. Abrelo!",
            iconSize: 100,
            color: Colors.brown,
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, SettingsScreen.routerName);
            },
          ),
          Text('"Esto es un cofre, aunque no lo parezca. Abrelo!"'),
          Divider(),
          Divider(),
          Text('Objetos Acumulados', textScaleFactor: 2),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.star_purple500, color: Colors.purple),
            Text('  Objetos ultra: ${Preferences.ultras}'),
          ]),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.star_purple500, color: Colors.blue),
            Text('Objetos legendarios: ${Preferences.legendarios}'),
          ]),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.star_purple500, color: Colors.orange),
            Text('Objetos epicos: ${Preferences.epicos}'),
          ]),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.star_purple500, color: Color.fromARGB(255, 13, 255, 0)),
            Text('Objetos comunes: ${Preferences.comunes}'),
          ]),
          Divider(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.delete,
              color: Colors.purple,
              size: 30,
            ),
            label: "R",
            activeIcon: Icon(
              Icons.delete,
              color: Colors.purple,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.delete,
              color: Colors.blue,
              size: 30,
            ),
            label: "P",
            activeIcon: Icon(
              Icons.delete,
              color: Colors.blue,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.delete,
              color: Colors.orange,
              size: 30,
            ),
            label: "Limpiar",
            activeIcon: Icon(
              Icons.delete,
              color: Colors.orange,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.delete,
              color: Color.fromARGB(255, 13, 255, 0),
              size: 30,
            ),
            label: "Limpiar",
            activeIcon: Icon(
              Icons.delete,
              color: Color.fromARGB(255, 13, 255, 0),
              size: 30,
            ),
          ),
        ],
        onTap: (value) {
          if (value == 0) Preferences.ultras = 0;
          if (value == 1) Preferences.legendarios = 0;
          if (value == 2) Preferences.epicos = 0;
          if (value == 3) Preferences.comunes = 0;
          Navigator.pushReplacementNamed(context, HomeScreen.routerName);
        },
      ),
    );
  }
}
