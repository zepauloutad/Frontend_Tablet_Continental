import 'package:app_continental/helpers/flutterfont.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Image.asset(
            "assets/images/logo.png",
            height: 100,
          ),
          actions: const <Widget>[
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    "Bem-Vindo!",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                IconButton(
                  icon:  Icon(Icons.login),
                  tooltip: 'Efetuar Logout',
                  onPressed: (null),
                )
              ],
            )
          ]),
      body: const Center(
      ),
    bottomNavigationBar: BottomAppBar(
    // Your bottom app bar configuration here
    color: Colors.orange,
    child: Row(
      children: [
        
        IconButton(
          tooltip: 'Home',
          icon: const Icon(Icons.home),
          iconSize: 40,
          onPressed: () {
            // Handle menu button press
          },
        ),
        //  const Spacer(),
          const SizedBox(width: 20),
          IconButton(
          tooltip: 'Painel de Administração',
          icon: const Icon(FlutterFontIcons.admin),
          iconSize: 40,
          onPressed: () {
            // Handle menu button press
          },
        ),
        
        //  const Spacer(),
        const SizedBox(width: 20),
          IconButton(
          tooltip: 'Gestão de Linhas',
          icon: const Icon(FlutterFontIcons.lines),
          iconSize: 40,
          onPressed: () {
            // Handle menu button press
          },
        ),
        // const Spacer(),
        const SizedBox(width: 20),
          IconButton(
          tooltip: 'Alertas Recebidos',
          icon: const Icon(FlutterFontIcons.alert),
          iconSize: 40,
          onPressed: () {
            // Handle menu button press
          },
        ),
      ],
    ),
  ),
  
    );
  }
}
