import 'package:flutter/material.dart';
import '../common/app_style.dart';
import '../common/size_config.dart';
import '../widgets/headings.dart';

class LPHorizontalList extends StatelessWidget {
  final String title;

  const LPHorizontalList(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Headings(title),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: index == 0 ? 20 : 5, right: index == 9 ? 20 : 5),
                width: 155.0,
                height: 169,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadiusList),
                  color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(kBorderRadiusList),
                        child: Image.asset("assets/images/dog_marly.png"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadiusList),
                              color: kLightOrange,
                            ),
                            child: Text(
                              "Chihuahua",
                              style: kSourceSansProBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                                color: kOrange,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            margin: EdgeInsets.only(
                              top: 10,
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                            ),
                            margin: EdgeInsets.only(
                              top: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Marly",
                            style: kSourceSansProBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 5,
                              color: kGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "16 jun 2021",
                            style: kSourceSansProregular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              color: kLightGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
