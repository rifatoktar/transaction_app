import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tracky/widgets/checkbox.dart';

import '../theme/constanst.dart';

class AddTransaction extends StatelessWidget {
  final String logo;
  final String methodName;

  const AddTransaction(
      {super.key, required this.logo, required this.methodName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black),
      child: ListTile(
        leading: SvgPicture.asset(
          logo,
          height: 24,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              methodName,
              style: Constant.methodHeader,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
        trailing: const SizedBox(
          height: 15,
          width: 15,
          child: MyWidget(),
        ),
      ),
    );
  }
}
