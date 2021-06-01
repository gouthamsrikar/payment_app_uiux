import 'package:flutter/material.dart';
import 'package:payment_app_uiux/Providers/contactprovider.dart';
import 'package:payment_app_uiux/widgets/Screen1widgets/friendcard.dart';
import 'package:payment_app_uiux/widgets/Screen1widgets/friendstackwidget.dart';
import 'package:payment_app_uiux/widgets/Screen1widgets/return&recieve.dart';
import 'package:provider/provider.dart';

class Youraccount extends StatefulWidget {
  final double width;
  final double height;

  Youraccount({@required this.width, @required this.height});

  @override
  _YouraccountState createState() => _YouraccountState();
}

class _YouraccountState extends State<Youraccount> {
  bool frndslist = false;
  void togglefrndslist() {
    setState(() {
      if (frndslist) {
        frndslist = false;
      } else {
        frndslist = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var contacts = Provider.of<Contactprovider>(context).contactlist;
    return Provider.of<Contactprovider>(context).recents
        ? Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: widget.width,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
                color: Color(0xffF4F3F8),
              ),
              child: Row(
                children: [
                  Text(
                    'YOUR ACCOUNT',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Provider.of<Contactprovider>(context, listen: false)
                            .togglerecent();
                      })
                ],
              ),
            ),
          )
        : Container(
            margin: EdgeInsets.only(top: widget.height * 0.25),
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: widget.width,
            height: widget.height - 125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
              color: Color(0xffF4F3F8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(color: Colors.transparent),
                  Text(
                    'YOUR ACCOUNT',
                    style: TextStyle(color: Colors.grey),
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
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                        boxShadow: [
                          new BoxShadow(
                              blurRadius: 5,
                              color: Colors.grey[350],
                              offset: Offset(5, 5))
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Provider.of<Contactprovider>(context,
                                            listen: false)
                                        .togglereturnio();
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'return',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight:
                                                Provider.of<Contactprovider>(
                                                            context)
                                                        .returnio
                                                    ? FontWeight.w700
                                                    : FontWeight.w400),
                                      ),
                                      Container(
                                        height: 2,
                                        width: 10,
                                        color: Provider.of<Contactprovider>(
                                                    context)
                                                .returnio
                                            ? Colors.black
                                            : Colors.transparent,
                                      )
                                    ],
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Provider.of<Contactprovider>(context,
                                            listen: false)
                                        .togglerecieveio();
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'recieve',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight:
                                              Provider.of<Contactprovider>(
                                                          context)
                                                      .returnio
                                                  ? FontWeight.w400
                                                  : FontWeight.w700,
                                        ),
                                      ),
                                      Container(
                                        height: 2,
                                        width: 10,
                                        color: Provider.of<Contactprovider>(
                                                    context)
                                                .returnio
                                            ? Colors.transparent
                                            : Colors.black,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Returnyouracc(),
                            Provider.of<Contactprovider>(context).returnio
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'NEXT 10 DAYS',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            '92 %',
                                            style: TextStyle(fontSize: 30),
                                          )
                                        ],
                                      ),
                                      VerticalDivider(
                                        color: Colors.transparent,
                                        width: 50,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'TIME UNTIL 100%',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            '69 days',
                                            style: TextStyle(fontSize: 30),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                            Divider(
                              color: Colors.transparent,
                            ),
                            Row(
                              children: [
                                Text(
                                  'FRIENDS',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(),
                                frndslist
                                    ? IconButton(
                                        icon: Icon(
                                          Icons.keyboard_arrow_up_rounded,
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          togglefrndslist();
                                        })
                                    : Container()
                              ],
                            ),
                            frndslist
                                ? Column(
                                    children: contacts
                                        .map((e) => Friendcard(
                                              width: widget.width,
                                              height: widget.height,
                                              imageurl: e.imageurl,
                                              name: e.name,
                                            ))
                                        .toList(),
                                  )
                                : Row(
                                    children: [
                                      Friendsstack(
                                        imageurl0: contacts[0].imageurl,
                                        imageurl1: contacts[1].imageurl,
                                        imageurl2: contacts[2].imageurl,
                                        imageurl3: contacts[3].imageurl,
                                      ),
                                      IconButton(
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            size: 30,
                                          ),
                                          onPressed: () {
                                            togglefrndslist();
                                          }),
                                    ],
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}

// Friendcard(
//                         width: widget.width,
//                         height: widget.height,
//                         imageurl:
//                             'https://scontent.fvtz2-1.fna.fbcdn.net/v/t1.6435-9/90245718_2603982573206837_7374722107252408320_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=a4a2d7&_nc_ohc=0ZRxVye8hDgAX9gadtz&tn=M-9zUOmwAudkAGhA&_nc_ht=scontent.fvtz2-1.fna&oh=44e8b4bc2c2bb504264c9ffaab204aab&oe=60D8EB04',
//                       )
