import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class MissedCallsPage extends StatefulWidget {
  MissedCallsPage({Key key}) : super(key: key);
  @override
  _MissedCallsPage createState() => new _MissedCallsPage();
}

class _MissedCallsPage extends State<MissedCallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6B8AE7),
      appBar: AppBar(
        title: Text("Thông số kĩ thuật", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF6B8AE7),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: <Widget>[
                  const ListTile(
                    minLeadingWidth: 10,
                    leading: CircleAvatar(
                      radius: 22.0,
                      backgroundImage:
                          AssetImage('assets/images/waterblue.png'),
                    ),
                    title: Text('91 - 100 WQI',
                        style: TextStyle(
                          color: Color(0Xff2E6CA4),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        )),
                    subtitle: Text('Rất tốt',
                        style: TextStyle(
                          color: Color(0Xff2E6CA4),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          height: 1.2,
                        )),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                    child: Container(
                        child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            child: Text(
                          "Sử dụng rất tốt cho mục đích cấp",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15.0),
                          textAlign: TextAlign.left,
                        )),
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: <Widget>[
                  const ListTile(
                    minLeadingWidth: 10,
                    leading: CircleAvatar(
                      radius: 22.0,
                      backgroundImage:
                          AssetImage('assets/images/watergreen.png'),
                    ),
                    title: Text('76-90 WQI',
                        style: TextStyle(
                          color: Color(0xFF4A8522),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        )),
                    subtitle: Text('Tốt',
                        style: TextStyle(
                          color: Color(0xFF4A8522),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          height: 1.2,
                        )),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                    child: Container(
                        child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            child: Text(
                          "Sử dụng rất tốt cho mục đích cấp",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15.0),
                          textAlign: TextAlign.left,
                        )),
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: <Widget>[
                  const ListTile(
                    minLeadingWidth: 10,
                    leading: CircleAvatar(
                      radius: 22.0,
                      backgroundImage:
                          AssetImage('assets/images/wateryellow.png'),
                    ),
                    title: Text('51-75 WQI',
                        style: TextStyle(
                          color: Color(0xFFD29500),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        )),
                    subtitle: Text('Trung bình',
                        style: TextStyle(
                          color: Color(0xFFD29500),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          height: 1.2,
                        )),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                    child: Container(
                        child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            child: Text(
                          "Sử dụng rất tốt cho mục đích cấp",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15.0),
                          textAlign: TextAlign.left,
                        )),
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: <Widget>[
                  const ListTile(
                    minLeadingWidth: 10,
                    leading: CircleAvatar(
                      radius: 22.0,
                      backgroundImage: AssetImage('assets/images/waterred.png'),
                    ),
                    title: Text('26-50 WQI',
                        style: TextStyle(
                          color: Color(0XFFBE5007),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        )),
                    subtitle: Text('Yếu',
                        style: TextStyle(
                          color: Color(0XFFBE5007),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          height: 1.2,
                        )),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                    child: Container(
                        child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            child: Text(
                          "Sử dụng rất tốt cho mục đích cấp",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15.0),
                          textAlign: TextAlign.left,
                        )),
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: <Widget>[
                  const ListTile(
                    minLeadingWidth: 10,
                    leading: CircleAvatar(
                      radius: 22.0,
                      backgroundImage:
                          AssetImage('assets/images/waterblack.png'),
                    ),
                    title: Text('0-25 WQI',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        )),
                    subtitle: Text('Kém',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          height: 1.2,
                        )),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                    child: Container(
                        child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            child: Text(
                          "Sử dụng rất tốt cho mục đích cấp",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15.0),
                          textAlign: TextAlign.left,
                        )),
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
