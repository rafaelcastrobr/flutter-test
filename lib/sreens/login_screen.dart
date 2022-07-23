import 'dart:ffi';

import 'package:dart_flutter_test/variables/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color topColor = Colors.blue;
  Color bottonColor = Color.fromARGB(255, 177, 203, 224);

  bool _continueConnected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [topColor, bottonColor],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Image.asset(
                "assets/ico-academia.gif",
                height: 100,
              ),
            ),
            Text(
              "Entrar",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 5,
                color: CustomColor().activePrimaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                    labelText: "Digite um título",
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        onTap: () {
                          print("DE NOVO");
                        },
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
