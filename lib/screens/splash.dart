import 'package:flutter/material.dart';
import '../common/size_config.dart';
import '../common/app_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Positioned(
            top: SizeConfig.blockSizeVertical! * 25,
            child: Image.asset(
              'assets/images/Content.png',
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: SizeConfig.blockSizeHorizontal! * 39.5,
            left: SizeConfig.blockSizeHorizontal! * 34,
            child: Image.asset(
              'assets/images/Logo.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: SizeConfig.blockSizeHorizontal! * 180,
            width: SizeConfig.screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Find your ",
                  style: kSourceSansProBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                    color: kGrey,
                  ),
                ),
                Text(
                  "Lucky",
                  style: kSourceSansProBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                      color: kOrange),
                ),
                Text(
                  " pet",
                  style: kSourceSansProBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                    color: kGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
