import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: const Text("Gym App"),
        ),
        //botao inferior direito
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  i = i + 1;
                });
              },
              child: Icon(Icons.add),
              splashColor: Colors.green,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  i = i - 1;
                });
              },
              child: Icon(Icons.remove),
              splashColor: Colors.green,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  i = i * 5;
                });
              },
              child: Text("X"),
              splashColor: Colors.green,
            ),
          ],
        ),
        body: Center(
            child: Container(
          child: Text(
            i.toString(),
            style: TextStyle(color: Colors.blue, fontSize: 72),
          ),
        )));
  }
}
