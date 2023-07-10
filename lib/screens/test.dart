import 'package:flutter/material.dart';

//위젯을 구현하기 위한 페이지
class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Test Page",
        ),
      ),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Text(index.toString());
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
