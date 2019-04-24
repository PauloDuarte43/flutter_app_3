import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _usuarioController = new TextEditingController();
  final TextEditingController _senhaController = new TextEditingController();
  String _bemvindo = "";

  void _exibeBemVindo() {
    setState(() {
      if (_usuarioController.text.isNotEmpty &&
          _senhaController.text.isNotEmpty) {
        debugPrint(_usuarioController.text);
        debugPrint(_senhaController.text);
        _bemvindo = _usuarioController.text;
      }
    });
  }

  void _cancelar() {
    _usuarioController.clear();
    _senhaController.clear();
    setState(() {
      _bemvindo = "";
    });
  }

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
                      controller: _usuarioController,
                      decoration: InputDecoration(
                          hintText: "Nome",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.5))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _senhaController,
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
                          child: RaisedButton(
                            onPressed: _exibeBemVindo,
                            color: Colors.white,
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 16.9),
                            ),
                          ),
                        ),
                        Container(
                          child: RaisedButton(
                            onPressed: _cancelar,
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$_bemvindo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
