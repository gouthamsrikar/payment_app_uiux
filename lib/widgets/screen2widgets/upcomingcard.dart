import 'package:flutter/material.dart';

class Upcomingcard extends StatefulWidget {
  final double width;
  final String imageurl;
  final String name;

  Upcomingcard(
      {@required this.width, @required this.imageurl, @required this.name});

  @override
  _UpcomingcardState createState() => _UpcomingcardState();
}

class _UpcomingcardState extends State<Upcomingcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 100,
      width: widget.width - 30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
        boxShadow: [
          new BoxShadow(
              blurRadius: 0, color: Colors.green, offset: Offset(10, 0))
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(45),
            child: Image(
              image: NetworkImage(widget.imageurl),
              height: 45,
              width: 45,
            ),
          ),
          VerticalDivider(
            color: Colors.transparent,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Re: ' + widget.name,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              Spacer(),
              Text(
                'to You',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
          VerticalDivider(
            color: Colors.transparent,
          ),
          Text(
            '31 May',
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Spacer(),
          Text(
            '₹ 87',
            style: TextStyle(color: Colors.grey[800], fontSize: 18),
          )
        ],
      ),
    );
  }
}

//hello :p
