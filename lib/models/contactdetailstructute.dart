import 'package:flutter/foundation.dart';

class Contactdetailstructure with ChangeNotifier {
  final String contactid;
  final String name;
  final String upiid;
  final String imageurl;
  Contactdetailstructure({
    @required this.contactid,
    @required this.name,
    @required this.upiid,
    @required this.imageurl,
  });
}
