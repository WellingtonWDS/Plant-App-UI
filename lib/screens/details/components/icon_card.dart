import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key, required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: kBackgroudColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor,
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: kBackgroudColor,
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}