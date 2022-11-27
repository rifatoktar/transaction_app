import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tracky/theme/constanst.dart';
import 'package:tracky/widgets/headers/main_header.dart';
import 'package:tracky/widgets/last_trans/income_container.dart';
import 'package:tracky/widgets/last_trans/move_container.dart';

import '../widgets/promotion.dart';
import '../widgets/recommended_trans.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leadingWidth: 250,
        leading: Container(
          margin: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
                        ),
                        fit: BoxFit.cover)),
                child: GestureDetector(
                  onTap: () {},
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                margin: const EdgeInsets.only(top: 7),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Mike!",
                        style: Constant.userName,
                      ),
                      Text(
                        "Afternoon",
                        style: Constant.userTime,
                      ),
                    ]),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.search_normal_1),
            iconSize: 24,
            color: iconColor,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/notification.svg',
              height: 24,
              width: 24,
              allowDrawingOutsideViewBox: true,
              color: iconColor,
            ),
          ),
        ],
      ),
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            const MainHeader(
              header: 'Last transactions',
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 90,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    IncomeContainer(),
                    SizedBox(
                      width: 10,
                    ),
                    MoveContainer(),
                  ]),
            ),
            const SizedBox(
              height: 30,
            ),
            const MainHeader(header: "Recommended trans"),
            const SizedBox(
              height: 10,
            ),
            const RecommendedTrans(),
            const SizedBox(
              height: 30,
            ),
            const MainHeader(header: "Promotions"),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 150,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: const [
                PromotionContainer(),
                SizedBox(
                  width: 10,
                ),
                PromotionContainer(),
              ]),
            )
          ],
        )),
      ),
    );
  }
}
