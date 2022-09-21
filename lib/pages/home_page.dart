import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DaStore"),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}