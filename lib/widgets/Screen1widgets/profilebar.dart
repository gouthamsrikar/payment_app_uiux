import 'package:flutter/material.dart';

class Profileindicator extends StatelessWidget {
  final double height;
  final String name;
  final String emailid;
  final String profilepic;
  Profileindicator({
    @required this.height,
    @required this.name,
    @required this.emailid,
    @required this.profilepic,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Color(0xff2E2B69),

      // height: height / 6,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                emailid,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff8785A8),
                ),
              )
            ],
          ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image(
              image: NetworkImage(
                profilepic,
              ),
              fit: BoxFit.cover,
              height: 60,
              width: 60,
            ),
          )
        ],
      ),
    );
  }
}
