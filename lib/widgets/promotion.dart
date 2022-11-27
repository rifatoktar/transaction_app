import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tracky/theme/constanst.dart';

class PromotionContainer extends StatefulWidget {
  const PromotionContainer({super.key});

  @override
  State<PromotionContainer> createState() => _PromotionContainerState();
}

class _PromotionContainerState extends State<PromotionContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: 150,
        width: 240,
        decoration: BoxDecoration(
            color: promoColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/images/apple.svg",
                    height: 24,
                    width: 24,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "You can get brand new \niPhone 14 Pro Max with \n50% discount with \nTRACKY promotion code",
                    style: Constant.promoText,
                  ),
                  const Spacer(),
                  Text(
                    "*promo codes must be used \nwithin the specified time.",
                    style: Constant.secondText,
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                  height: 90, child: Image.asset("assets/images/home2.png"))
            ]),
      ),
    );
  }
}
