import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Alcool ou Gasolina"),
          centerTitle: true,
        ),
        body: Container(
            color: Colors.blue[400],
            width: double.infinity,
            height: double.infinity,
            child: Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 20),
                child: SingleChildScrollView(
                  child: Column(
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
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "Preço Alcool, ex: 1,50",
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: "Preço Gasolina, ex: 2,80"),
                        ),
                      )
                    ],
                  ),
                ))),
      ),
    );
  }
}
