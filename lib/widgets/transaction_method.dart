import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/constanst.dart';

class TransactionMethod extends StatelessWidget {
  final String userMoney1;
  final String userMoney2;
  final String logo;
  final String methodName;

  const TransactionMethod(
      {super.key,
      required this.userMoney1,
      required this.userMoney2,
      required this.logo,
      required this.methodName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black),
      child: ListTile(
        leading: SvgPicture.asset(
          logo,
          height: 40,
        ),
        title: Container(
          margin: const EdgeInsets.only(top: 10, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                methodName,
                style: Constant.methodHeader,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userMoney1,
                    style: Constant.methodMoney,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      userMoney2,
                      style: const TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        trailing: Container(
          margin: const EdgeInsets.only(top: 10),
          child: GestureDetector(
            child: SvgPicture.asset(
              "assets/icons/more.svg",
              height: 24,
              color: Colors.white,
            ),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
