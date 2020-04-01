import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappdemo/src/providers/heroesInfo_provider.dart';
import 'package:providerappdemo/src/providers/villanosinfo_provider.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
            child: Icon(Icons.access_time),
            backgroundColor: Colors.red,
            onPressed: () {
              heroesInfo.heroe = 'IronMan';
              villanosInfo.villano = 'El Mandarín';
            }),
        SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.account_circle),
            backgroundColor: Colors.blue,
            onPressed: () {
              heroesInfo.heroe = 'Capitán América';
              villanosInfo.villano = 'Red skull';
            }),
      ],
    );
  }
}
