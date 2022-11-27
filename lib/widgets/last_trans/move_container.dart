import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../theme/constanst.dart';

class MoveContainer extends StatefulWidget {
  const MoveContainer({super.key});

  @override
  State<MoveContainer> createState() => _MoveContainerState();
}

class _MoveContainerState extends State<MoveContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 80,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: goTransColor,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      height: 15,
                      width: 15,
                      top: 25,
                      left: 25,
                      child: SvgPicture.asset(
                        "assets/images/apple.svg",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        "\$999",
                        style: Constant.lastMoneyText,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        child: const Text(
                          ".95",
                          style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/icons/arrow.svg",
                    height: 15,
                    width: 15,
                    color: Colors.white,
                  ),
                  Text(
                    "5 min ago",
                    style: Constant.lastMoney2Text,
                  )
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              SvgPicture.asset(
                "assets/images/amazon.svg",
                height: 40,
                width: 40,
                color: Colors.white,
              )
            ]),
      ),
    );
  }
}
