import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'bottom_app_bar.dart';

void main(){
  runApp(const MaterialApp(
    home: adminPanel(),
    debugShowCheckedModeBanner: false,
  ));
}

class adminPanel extends StatefulWidget {
  const adminPanel({Key? key}) : super(key: key);

  @override
  State<adminPanel> createState() => _adminPanelState();
}

class _adminPanelState extends State<adminPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(128,72,128,24),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    child: SizedBox(
                      width: 250,
                      height: 250,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/register-user.png",
                              width: 150,
                              height: 150,
                            ),
                            Text("Registar Utilizador",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    child: SizedBox(
                      width: 250,
                      height: 250,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                              Image.asset("assets/images/users-list.png",
                                height: 150,
                                width: 150,
                              ),
                              Text("Lista de Utilizadores",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(128,72,128,24),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    child: SizedBox(
                      width: 250,
                      height: 250,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/create-line.png",
                              width: 150,
                              height: 150,
                            ),
                            Text("Gerir Linhas",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
