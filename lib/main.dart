import 'package:app_continental/adminPanel.dart';
import 'package:app_continental/login.dart';
import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'bottom_app_bar.dart';

// import 'app_bar.dart';
void main() {
  runApp(const MaterialApp(
    home: adminPanel(),
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
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}