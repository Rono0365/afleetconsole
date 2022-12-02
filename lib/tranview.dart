import 'dart:math';

import 'package:flutter/material.dart';
import 'package:map/map.dart';

class trans extends StatefulWidget {
  const trans({Key? key}) : super(key: key);

  @override
  State<trans> createState() => _transState();
}

class _transState extends State<trans> {
  get mypos1 => null;

  double? get mypos2 => null;

  get controller => null;

  @override
  Widget build(BuildContext context) {
    var markers;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          
          ListTile(
            title: Center(
              child: Chip(
                  backgroundColor: Colors.green.withOpacity(0.2),
                  label: Text("Current buses on transit")),
            ),
          ),
          ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              tileColor: Colors.grey.shade100,
              onTap: () {
                /* Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    FriendMess(
                                                              title: myname
                                                                  .toString(),
                                                              token:
                                                                  widget.tokenx,
                                                              myname: '',
                                                              user:
                                                                  ro.toString(),
                                                            ),
                                                          ), //MaterialPageRoute
                                                        );*/
              },
              leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.withOpacity(0.1),
                      borderRadius: BorderRadius.all(Radius.circular(
                              10.0) //                 <--- border radius here
                          )),
                  child: Icon(Icons.directions_bus)),
              title: ListTile(
                title: Text("Bus 1"),
                subtitle: Text(
                  'travelled 8km so far\nAverageSpeed: 34km/h\nFuel Consumed:5 litres',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              trailing: InkWell(
                  onTap: () {},
                  child: RotatedBox(
                      quarterTurns: 90,
                      child: Icon(Icons.more_vert_outlined)))),
          ListTile(
            title: Center(
                child: Chip(
              backgroundColor: Colors.red.withOpacity(0.2),
              label: Text("Buses NOT on transit"),
            )),
          ),
          ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              tileColor: Colors.grey.shade100,
              onTap: () {
                /* Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    FriendMess(
                                                              title: myname
                                                                  .toString(),
                                                              token:
                                                                  widget.tokenx,
                                                              myname: '',
                                                              user:
                                                                  ro.toString(),
                                                            ),
                                                          ), //MaterialPageRoute
                                                        );*/
              },
              leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.withOpacity(0.1),
                      borderRadius: BorderRadius.all(Radius.circular(
                              10.0) //                 <--- border radius here
                          )),
                  child: Icon(Icons.directions_bus)),
              title: ListTile(
                title: Text("Bus 2"),
                subtitle: Text(
                  'Started: 3:00pm\nended: 5:00pm\nDistance: 8km\nAverageSpeed: 34km/h\nFuel Consumed:5 litres',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              trailing: InkWell(
                  onTap: () {},
                  child: RotatedBox(
                      quarterTurns: 90, child: Icon(Icons.more_vert_outlined))))
        ]),
      ),
    );
  }
}
