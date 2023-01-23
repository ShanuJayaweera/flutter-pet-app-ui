import 'package:flutter/material.dart';
import '../common/app_style.dart';
import '../common/size_config.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Image.asset(
            'assets/images/welcome_message.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: SizeConfig.blockSizeHorizontal! * 35,
          top: 50,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Hello ',
                      style: kSourceSansProregular.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                      ),
                    ),
                    Text(
                      'Osama 👋',
                      style: kSourceSansProBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Ready for an amazing and lucky',
                  style: kSourceSansProregular.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  ),
                ),
                Text(
                  'experience 🐕',
                  style: kSourceSansProregular.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}
