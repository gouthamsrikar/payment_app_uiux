import 'package:flutter/material.dart';
import 'package:payment_app_uiux/models/contactdetailstructute.dart';

class Contactprovider with ChangeNotifier {
  List<Contactdetailstructure> _contacts = [
    Contactdetailstructure(
      contactid: '5566',
      imageurl:
          'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
      name: 'andrew',
      upiid: 'andrew@sbi',
    ),
    Contactdetailstructure(
      contactid: '5567',
      imageurl:
          'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      name: 'raju',
      upiid: 'araju@sbi',
    ),
    Contactdetailstructure(
      contactid: '5568',
      imageurl:
          'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      name: 'laxmi',
      upiid: 'laxmi@sbi',
    ),
    Contactdetailstructure(
      contactid: '5569',
      imageurl:
          'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW4lMjBwcm9maWxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',
      name: 'shailesh',
      upiid: 'shailesh@sbi',
    ),
    Contactdetailstructure(
      contactid: '55610',
      imageurl:
          'https://www.adobe.com/express/create/media_141efea30cca217e8cb7fb3abb8ed9d663c29d550.jpeg?width=2000&format=webply&optimize=medium',
      name: 'muskan',
      upiid: 'muskan@sbi',
    ),
    Contactdetailstructure(
      contactid: '55654',
      imageurl:
          'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW4lMjBwcm9maWxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',
      name: 'mrunail',
      upiid: 'mrunail@sbi',
    ),
    Contactdetailstructure(
      contactid: '55662656',
      imageurl:
          'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      name: 'mama',
      upiid: 'mama@sbi',
    ),
    Contactdetailstructure(
      contactid: '5566251',
      imageurl:
          'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      name: 'vishnu',
      upiid: 'vishnu@sbi',
    ),
    Contactdetailstructure(
      contactid: '556687',
      imageurl:
          'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW4lMjBwcm9maWxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',
      name: 'nikunj',
      upiid: 'nikunj@sbi',
    ),
    Contactdetailstructure(
      contactid: '5566779',
      imageurl:
          'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW4lMjBwcm9maWxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',
      name: 'nitin',
      upiid: 'nitin@sbi',
    ),
    Contactdetailstructure(
      contactid: '5566460',
      imageurl:
          'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      name: 'ravi',
      upiid: 'ravi@sbi',
    ),
  ];
  bool recents = false;
  void togglerecent() {
    if (recents) {
      recents = false;
    } else {
      recents = true;
    }
    notifyListeners();
  }

  bool returnio = true;
  bool recieveio = false;
  void togglereturnio() {
    returnio = true;
    recieveio = false;
    notifyListeners();
  }

  void togglerecieveio() {
    returnio = false;
    recieveio = true;
    notifyListeners();
  }

  List<Contactdetailstructure> get contactlist {
    return [..._contacts];
  }

  Contactdetailstructure findbyid(String id) {
    return _contacts.firstWhere((contact) => contact.contactid == id);
  }
}
