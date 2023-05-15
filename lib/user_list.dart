import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'bottom_app_bar.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          color: Colors.grey,
          width: double.infinity,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 34),
                child: Text(
                  'Utilizadores Disponíveis',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 150),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          // Clear the search query
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      'assets/images/supervisor.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'António Figueiredo',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Supervisor',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 1.5,
                color: Colors.black,
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      'assets/images/supervisor.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Luís Machado',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Supervisor',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 1.5,
                color: Colors.black,
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      'assets/images/operario.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Filipa Marques',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Operário',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 1.5,
                color: Colors.black,
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      'assets/images/operario.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'André Pereira',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Operário',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 1.5,
                color: Colors.black,
              ),
            ],
          ),
        ),
         SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      'assets/images/operario.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Maria Inês',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Operário',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 1.5,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
