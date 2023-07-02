import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

//위젯을 구현하기 위한 페이지
class MyRatingBarTestPage extends StatefulWidget {
  const MyRatingBarTestPage({super.key});

  @override
  State<MyRatingBarTestPage> createState() => _MyRatingBarTestPageState();
}
class _MyRatingBarTestPageState extends State<MyRatingBarTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "my_rating_bar",
          ),
        ),
        body: const Center(
          child: MyRatingBar(),
        ),
      );
  }
}

//위젯
class MyRatingBar extends StatefulWidget {
  const MyRatingBar({
    super.key,
  });

  @override
  State<MyRatingBar> createState() => _MyRatingBarState();
}
class _MyRatingBarState extends State<MyRatingBar> {
  double rate = 0;

  void onRatingUpdate(rating) {
    setState(() {
      rate = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RatingBar(
            updateOnDrag: true,
            glow: false,
            itemSize: 70,
            allowHalfRating: true,
            itemCount: 5,
            ratingWidget: RatingWidget(
              full: Image.asset("lib/assets/rating_cocktail_full.png"),
              half: Image.asset("lib/assets/rating_cocktail_half.png"),
              empty: Image.asset("lib/assets/rating_cocktail_empty.png"),
            ),
            onRatingUpdate: onRatingUpdate,
          ),
          Text('Your rate: $rate'),
        ],
      ),
    );
  }
}
