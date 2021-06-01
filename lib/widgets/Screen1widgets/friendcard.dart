import 'package:flutter/material.dart';

class Friendcard extends StatefulWidget {
  final double width;
  final double height;
  final String imageurl;
  final String name;

  Friendcard(
      {@required this.width,
      @required this.height,
      @required this.imageurl,
      @required this.name});
  @override
  _FriendcardState createState() => _FriendcardState();
}

class _FriendcardState extends State<Friendcard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(45),
            child: Image(
              image: NetworkImage(widget.imageurl),
              fit: BoxFit.cover,
              height: 45,
              width: 45,
            ),
          ),
          VerticalDivider(color: Colors.transparent),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              Text(
                'last interacted: 7d ago',
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
          Spacer(),
          Column(
            children: [
              Text(
                '₹33',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              Text(
                'due',
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    );
  }
}
