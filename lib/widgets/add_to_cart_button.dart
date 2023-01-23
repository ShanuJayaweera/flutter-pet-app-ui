import 'package:flutter/material.dart';
import '../common/app_style.dart';
import '../common/size_config.dart';
import 'package:flutter_svg/svg.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        debugPrint('Add to cart button pressed!');
      },
      label: Text(
        'Add to cart',
        style: kSourceSansProSemibold.copyWith(
          color: kBoxShadowColor,
          fontSize: SizeConfig.blockSizeHorizontal! * 4,
        ),
      ),
      icon: SvgPicture.asset(
        'assets/add_to_cart_icon.svg',
      ),
      backgroundColor: kGrey,
      extendedPadding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: kPaddingHorizontal,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
