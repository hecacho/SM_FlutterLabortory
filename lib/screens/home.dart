import 'package:flutter/material.dart';
import 'my_rating_bar.dart';
import 'my_second_widget.dart';

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
                              builder: (context) =>
                                  const MyRatingBarTestPage(),
                            ),
                          );
                        },
                        child: const Text("My Rating Bar"),
                      ),
                    ),
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
                                  const MySecondWidgetTestPage(),
                            ),
                          );
                        },
                        child: const Text("실험체 2"),
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