import 'package:flutter/material.dart';

class Friendsstack extends StatelessWidget {
  final String imageurl0;
  final String imageurl1;
  final String imageurl2;
  final String imageurl3;
  Friendsstack({
    this.imageurl0,
    this.imageurl1,
    this.imageurl2,
    this.imageurl3,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image(
            image: NetworkImage(
              imageurl0,
            ),
            fit: BoxFit.cover,
            height: 30,
            width: 30,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              image: NetworkImage(
                imageurl1,
              ),
              fit: BoxFit.cover,
              height: 30,
              width: 30,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              image: NetworkImage(
                imageurl2,
              ),
              fit: BoxFit.cover,
              height: 30,
              width: 30,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 45),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              image: NetworkImage(
                imageurl3,
              ),
              fit: BoxFit.cover,
              height: 30,
              width: 30,
            ),
          ),
        ),
      ],
    );
  }
}
