import 'package:app_continental/factory_lines.dart';
import 'package:flutter/material.dart';
import 'package:app_continental/helpers/flutterfont.dart';
import 'alerts.dart';
import 'user_list.dart';
import 'logged_in.dart';

class MyBottomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyBottomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            tooltip: 'Home',
            icon: const Icon(Icons.home),
            iconSize: 40,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoggedIn(),
                ),
              );
            },
          ),
          //  const Spacer(),
          const SizedBox(width: 20),
          IconButton(
            tooltip: 'Painel de Administração',
            icon: const Icon(FlutterFontIcons.admin),
            iconSize: 40,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UserList(),
                ),
              );
            },
          ),
          //  const Spacer(),
          const SizedBox(width: 20),
          IconButton(
            tooltip: 'Gestão de Linhas',
            icon: const Icon(FlutterFontIcons.lines),
            iconSize: 40,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FactoryLines(),
                ),
              );
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
                MaterialPageRoute(
                  builder: (context) => const Alerts(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
