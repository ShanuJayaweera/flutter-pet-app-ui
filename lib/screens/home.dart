import 'package:flutter/material.dart';
import '../common/size_config.dart';
import '../widgets/lp_appbar.dart';
import '../widgets/welcome_message.dart';
import '../widgets/lp_horizontal_list.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const LPAppBar(),
            const WelcomeMessage(),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  LPHorizontalList('Dogs 🐕'),
                  SizedBox(height: 30),
                  LPHorizontalList('Cats 🐈'),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}