import 'package:flutter/material.dart';
import 'package:payment_app_uiux/Providers/contactprovider.dart';
import 'package:payment_app_uiux/widgets/Screen1widgets/Recents.dart';
import 'package:payment_app_uiux/widgets/Screen1widgets/contactbutton.dart';
import 'package:payment_app_uiux/widgets/Screen1widgets/profilebar.dart';
import 'package:payment_app_uiux/widgets/Screen1widgets/youraccount.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff2E2B69),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_down_rounded),
          onPressed: () {},
        ),
        elevation: 0,
        actions: [
          PopupMenuButton(
            itemBuilder: (_) => [],
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: height,
        child: Stack(
          children: [
            Column(
              children: [
                Profileindicator(
                  height: height,
                  name: 'Goutham Srikar',
                  emailid: 'msrikar@ma.iitr.ac.in',
                  profilepic:
                      'https://scontent.fvtz2-1.fna.fbcdn.net/v/t1.6435-9/90245718_2603982573206837_7374722107252408320_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=a4a2d7&_nc_ohc=0ZRxVye8hDgAX9gadtz&tn=M-9zUOmwAudkAGhA&_nc_ht=scontent.fvtz2-1.fna&oh=44e8b4bc2c2bb504264c9ffaab204aab&oe=60D8EB04',
                ),
                Recents(
                  width: width,
                )
              ],
            ),
            Youraccount(width: width, height: height),
          ],
        ),
      ),
    );
  }
}
