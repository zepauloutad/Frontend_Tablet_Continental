import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'bottom_app_bar.dart';

class Alerts extends StatefulWidget {
  const Alerts({super.key});

  @override
  State<Alerts> createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey,
            width: double.infinity,
            child: const Row(
              children: [
                Text(
                  'Alertas Recebidos',
                  style: TextStyle(fontSize: 30),
                ),
                // Widgets for the first row
              ],
            ),
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            child:  Row(
              children: [
                // Image.asset('assets/images/warning.png'),
                const Text(
                  'Linha 17 - Avaria nv.2',
                  style: TextStyle(fontSize: 30),
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue!;
                    });
                  },
                ),

                // Widgets for the second row
              ],
            ),
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            child: const Row(
              children: [
                Text(
                  'Linha 31 - Avaria nv.1',
                  style: TextStyle(fontSize: 30),
                ),
                // Widgets for the second row
              ],
            ),
          ),
          Container(
            color: Colors.yellow,
            width: double.infinity,
            child: const Row(
              children: [
                Text(
                  'Linha 21 - Com Falta de Stock',
                  style: TextStyle(fontSize: 30),
                ),
                // Widgets for the second row
              ],
            ),
          ),
          Container(
            color: Colors.yellow,
            width: double.infinity,
            child: const Row(
              children: [
                Text(
                  'Linha 22 - Com Falta de Stock',
                  style: TextStyle(fontSize: 30),
                ),
                // Widgets for the second row
              ],
            ),
          ),
          Container(
            color: Colors.yellow,
            width: double.infinity,
            child: const Row(
              children: [
                Text(
                  'Linha 25 - Com Falta de Stock',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
          // Add more rows as needed
        ],
      ),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
