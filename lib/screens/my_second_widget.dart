import 'package:flutter/material.dart';

//위젯을 구현하기 위한 페이지
class MySecondWidgetTestPage extends StatefulWidget {
  const MySecondWidgetTestPage({super.key});

  @override
  State<MySecondWidgetTestPage> createState() => _MySecondWidgetTestPageState();
}

class _MySecondWidgetTestPageState extends State<MySecondWidgetTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "my_rating_bar",
        ),
      ),
      body: const Center(
        child: Text("my second widget"),
      ),
    );
  }
}
