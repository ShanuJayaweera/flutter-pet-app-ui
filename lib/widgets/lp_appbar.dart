import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../common/app_style.dart';

class LPAppBar extends StatelessWidget {
  const LPAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            'assets/nav_icon.svg',
            width: 20,
          ),
          const CircleAvatar(
            radius: 20,
            backgroundColor: kRed,
            backgroundImage: NetworkImage(
                'https://static.vecteezy.com/system/resources/previews/001/993/889/non_2x/beautiful-latin-woman-avatar-character-icon-free-vector.jpg'),
          )
        ],
      ),
    );
  }
}
