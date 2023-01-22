import 'package:flutter/material.dart';
import '../common/app_style.dart';
import '../common/size_config.dart';

class Headings extends StatelessWidget {

  final String heading;
  const Headings(this.heading, {super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: kPaddingHorizontal,
          ),
          child: Text(
            heading,
            style: kSourceSansProBold.copyWith(
              fontSize: SizeConfig.blockSizeHorizontal! * 6,
              color: kGrey
            ),
          ),
        ),
      ],
    );
  }
}
