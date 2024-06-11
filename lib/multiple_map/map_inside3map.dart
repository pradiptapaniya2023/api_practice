import 'package:flutter/material.dart';

class MultipleMap2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return State_MultipleMap2();
  }
}

class State_MultipleMap2 extends State<MultipleMap2> {
  Map mMap = {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {"lat": "-37.3159", "lng": "81.1496"}
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
  };

  Userdata ud = Userdata.fromJson({
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {"lat": "-37.3159", "lng": "81.1496"}
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("==[${ud.id}]==")),
          Center(child: Text("==[${ud.name}]==")),
          Center(child: Text("==[${ud.username}]==")),
          Center(child: Text("==[${ud.email}]==")),
          Center(child: Text("==[${ud.address!.street}]==")),
          Center(child: Text("==[${ud.address!.suite}]==")),
          Center(child: Text("==[${ud.address!.city}]==")),
          Center(child: Text("==[${ud.address!.zipcode}]==")),
          Center(child: Text("==[${ud.address!.geo!.lat}]==")),
          Center(child: Text("==[${ud.address!.geo!.lng}]==")),
          Center(child: Text("==[${ud.phone}]==")),
          Center(child: Text("==[${ud.website}]==")),
        ],
      ),
    );
  }
}

class Userdata {
  int? id;
  String? name;
  String? username;
  String? email;
  Useradderess? address;

  String? phone;
  String? website;

  Userdata({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
  });

  Userdata.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    username = json["username"];
    email = json["email"];
    address = Useradderess.fromJson(json["address"]);
    phone = json["phone"];
    website = json["website"];
  }
}

class Useradderess {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Adderessgeo? geo;

  Useradderess(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});

  Useradderess.fromJson(Map<String, dynamic> json) {
    street = json["street"];
    suite = json["suite"];
    city = json["city"];
    zipcode = json["zipcode"];
    geo = Adderessgeo.fromJson(json["geo"]);
  }
}

class Adderessgeo {
  String? lat;
  String? lng;

  Adderessgeo({required this.lat, required this.lng});

  Adderessgeo.fromJson(Map<String, dynamic> json) {
    lat = json["lat"];
    lng = json["lng"];
  }
}
