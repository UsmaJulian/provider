import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier {
  String _heroe = 'Capitán América';
  Color colorBase = Colors.blue;

  // GET HEROES
  get heroe {
    return _heroe;
  }

  //SET HEROES
  set heroe(String nombre) {
    this._heroe = nombre;
    this.colorBase = (nombre == 'IronMan') ? Colors.red : Colors.blue;
    notifyListeners();
  }
}
