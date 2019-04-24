import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de usuarios"),
      ),
      backgroundColor: Colors.deepPurple[100],
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          children: <Widget>[
            Image.asset(
              "assets/face.png",
              width: 90.0,
              height: 90.0,
              color: Colors.white,
            ),
            Container(
              width: double.infinity,
              color: Colors.white70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Nome",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.5))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Senha",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.5))),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          //margin: const EdgeInsets.only(left: 38.0),
                          child: RaisedButton(
                            onPressed: () => null,
                            color: Colors.white,
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 16.9),
                            ),
                          ),
                        ),
                        Container(
                          //margin: const EdgeInsets.only(left: 100.0),
                          child: RaisedButton(
                            onPressed: () => null,
                            color: Colors.white,
                            child: Text(
                              "Cancelar",
                              style: TextStyle(
                                  color: Colors.redAccent, fontSize: 16.9),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
