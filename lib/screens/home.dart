import 'package:flutter/material.dart';
import 'my_rating_bar.dart';
import 'scaffold_master.dart';
import 'test.dart';

class MyHome extends StatelessWidget {
  const MyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SM Labortory"),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    //ListTile로 바꾸기
                    height: 100,
                    width: 400,
                    decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyRatingBarTestPage(),
                            ),
                          );
                        },
                        child: const Text("My Rating Bar"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    decoration: const BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ScaffoldMasterScreen(),
                            ),
                          );
                        },
                        child: const Text("실험체 2"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TestScreen(),
                            ),
                          );
                        },
                        child: const Text("Test Page"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

//ToDo
  // 화면 전환버튼 text->container범위로 변경
  //화면 아래부분 꾸미기
  //데이터 많아지면 listView위젯으로 단순반복 continer 줄이기

/*
ListView.separated(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return ;
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 10,
          ),
        ),
*/