import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 10;
    final String name = "Codepur";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
