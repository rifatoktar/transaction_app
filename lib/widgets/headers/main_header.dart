import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tracky/theme/constanst.dart';

class MainHeader extends StatelessWidget {
  final String header;

  const MainHeader({
    Key? key,
    required this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      child: Row(children: <Widget>[
        Text(
          header,
          style: Constant.mainHeaderText,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/arrow.svg',
              height: 24,
              width: 24,
              allowDrawingOutsideViewBox: true,
              color: iconColor,
            ))
      ]),
    );
  }
}
