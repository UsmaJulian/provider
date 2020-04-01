import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappdemo/src/providers/heroesInfo_provider.dart';
import 'package:providerappdemo/src/providers/villanosinfo_provider.dart';

class SuperText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final heroesInfo = Provider.of<HeroesInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Consumer<HeroesInfo>(
          builder: (context, heroesInfo, _) => Center(
              child: Text(
            heroesInfo.heroe,
            style: TextStyle(fontSize: 30.0, color: heroesInfo.colorBase),
          )),
        ),
        Consumer<VillanosInfo>(
          builder: (context, villanosInfo, _) => Center(
              child: Text(
            villanosInfo.villano,
            style: TextStyle(fontSize: 30.0, color: villanosInfo.colorBase),
          )),
        ),
      ],
    );
  }
}
