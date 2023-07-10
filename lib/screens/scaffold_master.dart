import 'package:flutter/material.dart';

//위젯을 구현하기 위한 페이지
class ScaffoldMasterScreen extends StatefulWidget {
  const ScaffoldMasterScreen({super.key});

  @override
  State<ScaffoldMasterScreen> createState() => _ScaffoldMasterScreenState();
}

class _ScaffoldMasterScreenState extends State<ScaffoldMasterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "side_bar",
        ),
        actions: [
          //AppBar > Title의 우측에 위젯들을 배치
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.error),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        //SideBar위젯
        width: 350,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPictureSize: const Size.square(80.0),
              currentAccountPicture:
                  Image.asset("../lib/assets/developJeans.jpg"),
              accountName: const Text("Joy"),
              accountEmail: const Text("hecacho@naver.com"),
            ),
            const ListTile(
              leading: Icon(Icons.access_alarm_sharp),
              title: Text("Timer"),
              subtitle: Text("Tic Toc"),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle_sharp),
              title: Text("User"),
              subtitle: Text("Friends"),
            )
          ],
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("snackbar!"),
              ),
            );
          },
          child: const Text("call snackbar!"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_rounded), label: 'a'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'b'),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_filled_rounded), label: 'c'),
        ],
        onTap: (int index) {},
        selectedItemColor: Colors.amber,
      ),
    );
  }
}
