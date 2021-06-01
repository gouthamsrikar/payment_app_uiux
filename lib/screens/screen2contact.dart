import 'package:flutter/material.dart';
import 'package:payment_app_uiux/Providers/contactprovider.dart';

import 'package:payment_app_uiux/widgets/Screen1widgets/profilebar.dart';
import 'package:payment_app_uiux/widgets/screen2widgets/upcomingcard.dart';
import 'package:provider/provider.dart';

class Screen2contact extends StatelessWidget {
  final routename = '/contactscreen';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final String id = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xff2E2B69),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[800],
        onPressed: () {},
        elevation: 0,
      ),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.keyboard_arrow_down_rounded),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Profileindicator(
            height: height,
            name: Provider.of<Contactprovider>(context).findbyid(id).name,
            emailid: Provider.of<Contactprovider>(context).findbyid(id).upiid,
            profilepic:
                Provider.of<Contactprovider>(context).findbyid(id).imageurl,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'TRANSACTIONS',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    minimumSize: Size((width / 2) - 40, 40),
                    backgroundColor: Color(0xff1A1443),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'MESSAGE',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    minimumSize: Size((width / 2) - 40, 40),
                    backgroundColor: Color(0xff1A1443),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
                color: Colors.grey[200],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(color: Colors.transparent),
                        Text(
                          'YOUR RELATIONSHIP',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w700),
                        ),
                        Divider(color: Colors.transparent),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  '₹ 19L',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'total\nexhanges',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                Text(
                                  '₹ 1945',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'upcoming\npaybacks',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                Text(
                                  '₹ 7854',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'upcoming\ndues',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                        Divider(color: Colors.transparent),
                        Divider(color: Colors.transparent),
                        Text(
                          'UPCOMING',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w700),
                        ),
                        Divider(color: Colors.transparent),
                      ],
                    ),
                  ),
                  Upcomingcard(
                    width: width,
                    imageurl:
                        'https://scontent.fvtz2-1.fna.fbcdn.net/v/t1.6435-9/90245718_2603982573206837_7374722107252408320_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=a4a2d7&_nc_ohc=0ZRxVye8hDgAX9gadtz&tn=M-9zUOmwAudkAGhA&_nc_ht=scontent.fvtz2-1.fna&oh=44e8b4bc2c2bb504264c9ffaab204aab&oe=60D8EB04',
                    name: 'hello',
                  ),
                  Spacer(),
                  Container(
                      alignment: Alignment.centerLeft,
                      width: width,
                      height: 50,
                      color: Color(0xff2E2B69),
                      child: IconButton(
                        icon: Icon(
                          Icons.more_vert_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
