import 'package:flutter/material.dart';
import 'package:app_continental/helpers/flutterfont.dart';
import 'alerts.dart';

class MyBottomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyBottomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
             Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Alerts()),);
            },
          ),
        ],
      ),
    );
  }
}
