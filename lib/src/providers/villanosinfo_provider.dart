import 'package:flutter/material.dart';

class VillanosInfo with ChangeNotifier {
  String _villano = 'Red Skull';
  Color colorBase = Colors.grey;

  // GET VILLANOS
  get villano {
    return _villano;
  }

  //SET VILLANOS
  set villano(String nombre) {
    this._villano = nombre;
    this.colorBase = (nombre == 'El Mandarín') ? Colors.cyan : Colors.grey;
    notifyListeners();
  }
}
