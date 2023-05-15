import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'bottom_app_bar.dart';

// import 'app_bar.dart';
void main() {
  runApp(const MaterialApp(
    home: login(),
    debugShowCheckedModeBanner: false,
  ));
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 250, right: 250),
              child: Container(
                color: Colors.orange,
                child: Column(children: [
                  const Padding(
                      padding: EdgeInsets.only(top: 50, left: 16, right: 16),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: Text(
                          "Nome de Utilizador:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      )),
                  const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      )),
                  const Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Text(
                          "Password:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      )),
                  const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: TextField(
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 50, 16, 20),
                    child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue)),
                            child: const Padding(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                "Efetuar Login",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 75),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Text("Se não consegue fazer login, entre em contacto com um administrador",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]),
              )),
        ],
      ),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
