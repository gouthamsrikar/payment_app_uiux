import 'package:flutter/material.dart';
import 'package:payment_app_uiux/screens/screen2contact.dart';

class Contactbutton extends StatelessWidget {
  final String imageurl;
  final String name;
  final double width;
  final String contactid;
  Contactbutton({
    @required this.imageurl,
    @required this.name,
    @required this.width,
    @required this.contactid,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.all(15)),
      onPressed: () {
        Navigator.of(context)
            .pushNamed(Screen2contact().routename, arguments: contactid);
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(((width - 40) / 5) - 30),
            child: Image(
              image: NetworkImage(
                imageurl,
              ),
              fit: BoxFit.cover,
              height: ((width - 40) / 5) - 30,
              width: ((width - 40) / 5) - 30,
            ),
          ),
          Divider(
            color: Colors.transparent,
          ),
          Text(
            name,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w300, fontSize: 13),
          )
        ],
      ),
    );
  }
}
