import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/constanst.dart';

class RecommendedTrans extends StatefulWidget {
  const RecommendedTrans({super.key});

  @override
  State<RecommendedTrans> createState() => _RecommendedTransState();
}

class _RecommendedTransState extends State<RecommendedTrans> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: 150,
        decoration: BoxDecoration(
            color: recommendedColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/images/amazon.svg",
                    height: 24,
                    width: 24,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "There is a 50% discount for \nnew seasons coats in \nBlack Friday!!!",
                    style: Constant.recommendedText,
                  ),
                  const Spacer(),
                  Text(
                    "*amazon may make changes regarding discounts.",
                    style: Constant.secondText,
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset("assets/images/home1.png"))
            ]),
      ),
    );
  }
}
