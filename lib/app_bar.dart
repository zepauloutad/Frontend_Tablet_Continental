import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements  PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
              icon: Icon(Icons.login),
              tooltip: 'Efetuar Logout',
              onPressed: (null),
            )
          ],
        )
      ],
    );  
  }
  }
