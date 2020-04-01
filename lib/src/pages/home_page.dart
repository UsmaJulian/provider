import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappdemo/src/providers/heroesInfo_provider.dart';

import 'package:providerappdemo/src/widgets/Super_contenidoText_widget.dart';
import 'package:providerappdemo/src/widgets/super_floatingAction.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(heroesInfo.heroe),
      ),
      body: SuperText(),
      floatingActionButton: SuperFloatingAction(),
    );
  }
}
