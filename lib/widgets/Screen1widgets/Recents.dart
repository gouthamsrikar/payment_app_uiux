import 'package:flutter/material.dart';
import 'package:payment_app_uiux/Providers/contactprovider.dart';

import 'package:payment_app_uiux/widgets/Screen1widgets/contactbutton.dart';
import 'package:provider/provider.dart';

class Recents extends StatefulWidget {
  final double width;

  Recents({
    @required this.width,
  });

  @override
  _RecentsState createState() => _RecentsState();
}

class _RecentsState extends State<Recents> {
  // var recents = false;
  // void togglerecent() {
  //   setState(() {
  //     if (recents) {
  //       recents = false;
  //     } else {
  //       recents = true;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    //  recents = Provider.of<Contactprovider>(context).recents;
    var contacts = Provider.of<Contactprovider>(context).contactlist;
    return Provider.of<Contactprovider>(context).recents
        ? Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 45, right: 20, left: 20),
              width: widget.width,
              color: Color(0xff2E2B69),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Text(
                      'FREQUENTLY CONTACTED',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff8785A8),
                      ),
                    ),
                  ),
                  SliverGrid.count(
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 5,
                      crossAxisCount: 5,
                      childAspectRatio: ((widget.width - 40) / 5) /
                          (((widget.width - 40) / 5) + 45),
                      children: [
                        for (int i = 0; i < 7; i++)
                          Contactbutton(
                            imageurl: contacts[i].imageurl,
                            name: contacts[i].name,
                            width: widget.width,
                            contactid: contacts[i].contactid,
                          )
                      ]),
                  SliverToBoxAdapter(
                    child: Row(
                      children: [
                        Text(
                          'RECENTS',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff8785A8),
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_up_rounded,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              // togglerecent();
                              Provider.of<Contactprovider>(context,
                                      listen: false)
                                  .togglerecent();
                            })
                      ],
                    ),
                  ),
                  SliverGrid.count(
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 5,
                      crossAxisCount: 5,
                      childAspectRatio: ((widget.width - 40) / 5) /
                          (((widget.width - 40) / 5) + 40),
                      children: [
                        for (int i = 0; i < contacts.length; i++)
                          Contactbutton(
                            imageurl: contacts[i].imageurl,
                            name: contacts[i].name,
                            width: widget.width,
                            contactid: contacts[i].contactid,
                          ),
                      ]),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 50,
                    ),
                  )
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(10),
            child: Row(children: [
              for (int i = 0; i < 4; i++)
                Contactbutton(
                  imageurl: contacts[i].imageurl,
                  name: contacts[i].name,
                  width: widget.width,
                  contactid: contacts[i].contactid,
                ),
              TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.all(20)),
                onPressed: () {
                  // togglerecent();
                  Provider.of<Contactprovider>(context, listen: false)
                      .togglerecent();
                },
                child: Column(
                  children: [
                    Container(
                      height: ((widget.width - 40) / 5) - 30,
                      width: ((widget.width - 40) / 5) - 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            ((widget.width - 40) / 5) - 30),
                        color: Colors.grey[400],
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xff2E2B69),
                        size: 30,
                      ),
                    ),
                    Divider(
                      color: Colors.transparent,
                    ),
                    Text(
                      'recent',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    )
                  ],
                ),
              )
            ]),
          );
  }
}
