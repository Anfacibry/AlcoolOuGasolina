import 'dart:ui';

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";

  void _calcular() {
    double alcool = double.tryParse(_controllerAlcool.text);
    double gasolina = double.tryParse(_controllerGasolina.text);

    if (alcool == null || gasolina == null) {
      setState(() {
        _textoResultado =
            "Número inválido, digite um número maior que 0 e com (.)";
      });
    } else {
      if ((alcool / gasolina) >= 0.7) {
        setState(() {
          _textoResultado = "Melhor abastecer com gasolina";
        });
      } else {
        setState(() {
          _textoResultado = "Melhor abastecer com alcool";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Alcool ou Gasolina"),
          centerTitle: true,
        ),
        body: Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            child: Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Image.asset("images/logo.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Saiba qual a melhor opção para o abastecimento do seu carro",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Preço Alcool, ex: 1,50",
                          ),
                          controller: _controllerAlcool,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Preço Gasolina, ex: 2,80"),
                          controller: _controllerGasolina,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.blue[400],
                          child: Text(
                            "CALULAR",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          onPressed: _calcular,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: Text(
                          _textoResultado,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ))),
      ),
    );
  }
}
