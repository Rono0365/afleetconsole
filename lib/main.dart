import 'package:afleetconsole/fees.dart';
import 'package:afleetconsole/intercomm.dart';
import 'package:afleetconsole/notifications.dart';
import 'package:afleetconsole/studentsclasss.dart';
import 'package:flutter/material.dart';
import 'tranview.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Console',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.deepPurple,
        ),
        home:
            screen() //MyHomePage(title: 'AfleetConsole', token: '', userid: ''),
        );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {Key? key,
      required this.titlex,
      required this.tokenx,
      required this.useridx})
      : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String titlex;
  final String tokenx;
  final String useridx;

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = true;
  bool shownavrail = false;
  bool showTrailing = true;
  double groupAligment = -1.0;
  final List<Color> colors = <Color>[
    Colors.cyan.shade100,
    Colors.lightBlue.shade100,
    Colors.deepPurple.shade200,
    Colors.red.shade200,
    Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100,
    Colors.deepPurple.shade300,
    Colors.red.shade300,
    Colors.orange.shade300,
    Colors.greenAccent.shade100,
    Colors.cyan.shade100,
    Colors.lightBlue.shade100,
    Colors.deepPurple.shade200,
    Colors.red.shade200,
    Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100,
    Colors.cyan.shade100,
    Colors.lightBlue.shade100,
    Colors.deepPurple.shade200,
    Colors.red.shade200,
    Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100,
    Colors.cyan.shade100,
    Colors.lightBlue.shade100,
    Colors.deepPurple.shade200,
    Colors.red.shade200,
    Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100,
    Colors.cyan.shade100,
    Colors.lightBlue.shade100,
    Colors.deepPurple.shade200,
    Colors.red.shade200,
    Colors.orange.shade200,
    Colors.green.shade100,Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100,
    Colors.cyan.shade100,
    Colors.lightBlue.shade100,
    Colors.deepPurple.shade200,
    Colors.red.shade200,
    Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100,
    Colors.cyan.shade100,
    Colors.lightBlue.shade100,
    Colors.deepPurple.shade200,
    Colors.red.shade200,
    Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100,
    Colors.cyan.shade100,
    Colors.lightBlue.shade100,
    Colors.deepPurple.shade200,
    Colors.red.shade200,
    Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100,
    Colors.cyan.shade100,
    Colors.lightBlue.shade100,
    Colors.deepPurple.shade200,
    Colors.red.shade200,
    Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100,
    Colors.cyan.shade100,
    Colors.lightBlue.shade100,
    Colors.deepPurple.shade200,
    Colors.red.shade200,
    Colors.orange.shade200,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100,
  ];
  List kn = [
    {
      "headline": "Class 1",
      "hw": "samdhing real",
      "hwdeadline": "samng real",
      "Class": "samng real",
      "school": "samdhing real",
      "month": "none",
      "day_taught": "Monday",
      "time_duration": "2 hours",
      "time_taught": "8:00 am",
      "code": "001",
      "teacher": "teacher x",
      "place_taught": "icenter"
    },
    {
      "headline": "Class 2",
      "hw": "samdhing real",
      "hwdeadline": "samng real",
      "Class": "samng real",
      "school": "samdhing real",
      "month": "none",
      "day_taught": "Friday",
      "time_duration": "2 hours",
      "time_taught": "2:00 pm",
      "code": "003",
      "teacher": "Nathan",
      "place_taught": "icenter"
    },
    {
      "headline": "Class 3",
      "hw": "samdhing real",
      "hwdeadline": "samng real",
      "Class": "samng real",
      "school": "samdhing real",
      "month": "none",
      "day_taught": "Tuesday",
      "time_duration": "2 hours",
      "time_taught": "8:00 am",
      "code": "004",
      "teacher": "teachery",
      "place_taught": "auditorium"
    },
    {
      "headline": "Class 4",
      "hw": "samdhing real",
      "hwdeadline": "samng real",
      "Class": "samng real",
      "school": "samdhing real",
      "month": "none",
      "day_taught": "Thursday",
      "time_duration": "2 hours",
      "time_taught": "11:00 am",
      "code": "878257",
      "teacher": "teacher s",
      "place_taught": "Xlabs"
    },
    {
      "headline": "Class 5",
      "hw": "samdhing real",
      "hwdeadline": "samng real",
      "Class": "samng real",
      "school": "samdhing real",
      "month": "none",
      "day_taught": "Thursday",
      "time_duration": "2 hours",
      "time_taught": "8:00 am",
      "code": "008",
      "teacher": "teacher s",
      "place_taught": "icenter"
    }
  ];
  var value;
  bool darkmode = true;
  var subjects;
  Color light3 = Colors.black12;
  Color Subject = Colors.blueGrey.shade50;
  Color light2 = Colors.blueGrey.shade50; //Subject
  Color light = Colors.grey.shade900; //scaffold
  Color lighttext =
      Colors.blueGrey.shade50; //Color light2text = Colors.grey.shade900;

  var sky2;
  var value2;
  int currt = 0;
  var value3;
  var mtv;
  var alone;
  var leo;
  bool b1 = false;
  bool b2 = false;
  bool b3 = false;
  bool b4 = false;
  bool nm = false;
  var info2;
  List alist = [];
  var index;
  bool lean = false;
  var info3;
  var profpic;
  var musk;
  final titleController = TextEditingController();

  Color newcor = Colors.deepPurple;
  Color oldcor = Colors.purple;
  late TabController _tabController;
  //var newcor;
  var now;
  int ex5 = 0;
  int exc = 0;
  int ex = 0;
  var crpt;
  var yoi;
  var cx99;
  var cx199;
  var xrx;
  var gechyu;
  bool sach = true;
  var this2;
  var nofmsg;
  //late TabController _tabController;
  List vb = [];
  var gmen;
  var week_area;
  //
  List haro = [];
  List la = [];
  List la2 = [];
  Future getMe() async {
    String token = widget.tokenx.toString();
    String id = widget.useridx.toString();
    //int cv = int.parse(id) - 1;

    print('here' + token);
    print('here' + id);
    //print(widget.token); wasn't easy but never stopped
    var headers = {
      "Authorization": "Token $token",
      "Accept": "application/json",
      "Access-Control-Allow-Origin": "*"
    };
    http.Response responsev = await http
        .get(Uri.parse('https://afleet.co.ke/me/$id'), headers: headers);
    var xcv = jsonDecode(responsev.body);
    setState(() {
      sky2 = xcv;
      //here you'll get the value of the username
      //the usernbame is unique thus you can use it as nany user driver// teacher // student
       //value = sky2;
    });
    print(sky2);
  }

  Future getWeather() async {
    String token = widget.tokenx.toString();
    // ignore: avoid_print
    print(token);
    // ignore: avoid_print
    print(widget.tokenx); // wasn't easy but never stopped
    var headers = {
      //"Authorization": "Token $token",
      "Accept": "application/json",
      "Access-Control-Allow-Origin": "*"
    };
//https://afleet.co.ke/HW/
    final tranzo = await http.get(Uri.parse('https://afleet.co.ke/stages/'),
        headers: headers);
    final picpic = await http.get(Uri.parse('https://afleet.co.ke/profpic/'),
        headers: headers);

    //https://afleet.co.ke/information/
    final info2 = await http.get(Uri.parse('https://afleet.co.ke/information/'),
        headers: headers);

    final responsex = await http.get(Uri.parse('https://afleet.co.ke/classes/'),
        headers: headers); //headers: headers
    //nofmsg
    final nfmsg = await http.get(Uri.parse('https://afleet.co.ke/notef/'),
        headers: headers
        // Send authorization headers to the backend.
        );
    final responsev = await http
        .get(Uri.parse('https://afleet.co.ke/students/'), headers: headers
            // Send authorization headers to the backend.
            ); //headers: headers
    //http.Response responsex = await http
    //  .get(Uri.parse('https://afleet.co.ke/id/1/')); //get via token
    http.Response response1 = await http.get(
        Uri.parse('https://afleet.co.ke/Sbuss/'),
        headers: headers); //get via token headers: headers
    http.Response response77 = await http
        .get(Uri.parse('https://afleet.co.ke/transolution/'), headers: headers);
    var result5 = jsonDecode(tranzo.body);
    var notmsg = jsonDecode(nfmsg.body);
    var magix = jsonDecode(picpic.body);

    var result77 = jsonDecode(response77.body);
    var info = jsonDecode(info2.body); //returns info
    var result1 = jsonDecode(response1.body); //returns json body from api
    var results = jsonDecode(responsev.body); //returns json body from api
    var resultx = jsonDecode(responsex.body);
    setState(() {
      //DateFormat('EEEE').format(date);
      week_area = DateFormat(' d MMM').format(DateTime.now());
      leo = DateFormat('EEEE').format(DateTime.now());
      now = DateFormat('EEEE d MMM')
          .format(DateTime.now()); //returns json body from api
    }); //subjects
    setState(() {
      value = results;
      //this.value3 = info;
      yoi = result77;
      value2 = resultx;
      profpic = magix;
      this2 = notmsg;
      info3 = info;
      value3 = result1;
      alone = result5;
    });
    xnote(String order) {
      //ex = 0;
      ex++;
      return ex < 2
          ? Ninotify.showNotification(
              id: 2,
              title: order,
              body: "You have new messages",
              payload: 'r',
            )
          : '';
    }

    xls(String order) {
      //ex = 0;
      ex++;
      return ex < 2
          ? Ninotify.showNotification(
              id: 2,
              title: order,
              body: "Your SchoolBus has started it's transit",
              payload: 'r',
            )
          : '';
    }

    beam(String order) {
      //ex = 0;
      ex5++;
      return ex5 < 2
          ? Ninotify.showNotification(
              id: 2,
              title: order,
              body: "Your SchoolBus has arrived in school",
              payload: 'r',
            )
          : '';
    }

    var resch =
        yoi.map((i) => i['userN'] == sky2['username'] ? vb.add(i['bi']) : null);
    //var milast = vb.last;
    // ignore: avoid_print
    print(resch);

    var xon = info3.map((th) => th['to'] == sky2['username'] ? la.add(th) : null);
    // ignore: avoid_print
    print(xon);
    var gghvbh = info3.where((u) => u['whoiswho'] == sky2['username']).length;
    // ignore: avoid_print
    print(gghvbh);
    xrx = gghvbh.toString(); //already done 42
    var x = notmsg
        .map((ex) => ex['useryou'].toString().contains(sky2['username'])
            ? cx99 = ex['numbx'].toString()
            : 'null')
        .toString(); //
    var kilosh = notmsg
        .map((ex) => ex['useryou'].toString().contains(sky2['username'])
            ? cx199 = ex['state'].toString()
            : 'null')
        .toString(); //
    // ignore: avoid_print
    print(x);
    // ignore: avoid_print
    print(kilosh);

    crpt = la.length.toString();
    // ignore: avoid_print
    print(crpt);
    // ignore: avoid_print
    print(la.length.toString());

    String xb = la.length.toString();
    // ignore: avoid_print
    print(xb);
    final la2 = la;
    // ignore: avoid_print
    print(la2);
    //mtv = xb; //get the info value

    var cvdf = value3.map((x) => vb.last.toString() == x['id'].toString()
        ? haro.add(value3.indexOf(x))
        : '');
    // ignore: avoid_print
    print(cvdf);
    // ignore: avoid_print
    print(haro);
    // ignore: avoid_print
    print("<<<<<<<<<<>>>>>>>>>" + cvdf.toList().toString());
    //setsategoes here
    //this.gechyu = value3[haro.last]['commute'];
    //print(gechyu);
    if (cx99 == xrx) {
      nm = false;
      // ignore: avoid_print
      print("-----------------------------------------------");
      // ignore: avoid_print
      print("________________DONE__________________________");
    } else {
      // ignore: avoid_print
      print(kilosh + cx99);
      if (cx199 == 'offline' && int.parse(xrx) > int.parse(cx99)) {
        xnote("message");
        // ignore: avoid_print
        print("Should call note");
        nm = true;
      }
      // ignore: avoid_print
      print(cx99.toString() + "    " + xrx.toString());
      // ignore: avoid_print
      print('++++++++++++++not done++++++++++++++++++++++++++++++');
    }
    /*cx199 == 'offline' && int.parse(xrx) > int.parse(cx99)
        ? xnote("message")
        : '';*/
    //gechyu == 'on' ? xls("SchoolBus has started it's transit") : '';
    //gechyu == 'arrived' ? beam("School bus") : '';
    haro.clear();
    la.clear();
    var crpt2 = crpt;
    // ignore: avoid_print
    print(crpt2);
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    // _tabController = new TabController(vsync: this, length: lbottom.length);
    getMe();
    getWeather();
    print(sky2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool darkmode = false;
    int bloody = 0;
    var subjects;
    Color light3 = Colors.black12;
    Color Subject = Colors.blueGrey.shade50;
    Color light2 = Colors.blueGrey.shade50; //Subject
    Color light = Colors.grey.shade900; //scaffold
    Color lighttext = Colors.blueGrey.shade50;

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return value2 == null
        ? const Scaffold(body: Center(child: CircularProgressIndicator()))
        : Scaffold(
            bottomNavigationBar: MediaQuery.of(context).size.width > 600
                ? SizedBox()
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 52,
                      //width: MediaQuery.of(context).size.width * 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                        color: Colors.black12, //: Colors.grey.shade200,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedIndex = 0;
                                });
                              },
                              child: _selectedIndex == 0
                                  ? CircleAvatar(
                                      child: Icon(Icons.home_outlined))
                                  : CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: Icon(
                                        Icons.home_outlined,
                                        color: Colors.deepPurple,
                                      ))),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedIndex = 1;
                                });
                              },
                              child: _selectedIndex == 1
                                  ? CircleAvatar(child: Icon(Icons.people))
                                  : CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: Icon(
                                        Icons.people,
                                        color: Colors.deepPurple,
                                      ))),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedIndex = 3;
                                });
                              },
                              child: _selectedIndex == 3
                                  ? CircleAvatar(
                                      child: Icon(Icons.calendar_month))
                                  : CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: Icon(
                                        Icons.calendar_month,
                                        color: Colors.deepPurple,
                                      ))),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedIndex = 5;
                                });
                              },
                              child: _selectedIndex == 5
                                  ? CircleAvatar(child: Icon(Icons.mail))
                                  : CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: Icon(
                                        Icons.mail,
                                        color: Colors.deepPurple,
                                      ))),
                        ],
                      ),
                    )),
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.deepPurple),
              backgroundColor: Colors.grey.shade50,
              /*leading: IconButton(
                  onPressed: () {
                    
                      shownavrail?shownavrail = true:shownavrail = false;
                    
                  },
                  icon: Icon(Icons.menu, color: Colors.deepPurple)
                  
                  ),*/
              title: Container(
                child: Row(
                  children: [
                    //Icon(Icons.library_books,color: Colors.deepPurple,),
                    Text("Afleet", style: TextStyle(color: Colors.deepPurple)),
                    Text("Console",
                        style: TextStyle(
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.w200)),
                  ],
                ),
              ),
              actions: [
                /*Container(
                  //height: 55,
                  width: MediaQuery.of(context).size.width * .35,
                  child: Padding(
                    //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child:  TextField(
                            style: TextStyle(color: Colors.black),
                            onTap: () {
                              /* woz = true;

                          sq(rono
                              .where(
                                (x) => x['username'].toLowerCase().contains(''),
                                //print(x);
                              )
                              .toList());*/
                            },
                            //actions:[],
                            onChanged: (text) {
                              /* woz = true;

                          sq(rono
                              .where(
                                (x) => x['username']
                                    .toLowerCase()
                                    .contains(text.toLowerCase()),
                                //print(x);
                              )
                              .toList());

                          print("can't get this" + rono.toString());*/
                            },
                            autofocus: false,
                            controller: titleController,
                            decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.search, color: Colors.black),
                                /*suffixIcon: woz
                                ? InkWell(
                                    child: Icon(Icons.close,color:!widget.kala1
                                  ? Colors.black
                                  : Colors.white,),
                                    onTap: () {
                                      //woz = true;

                                      titleController.clear();
                                      titleController.text = '';
                                      print('was here');
                                    },
                                  )
                                : Container(),*/
                                filled: true,
                                fillColor: Colors.white30,
                                //fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(60.0)),
                                //labelText: 'Search',
                                hintText: 'Search ...'),
                          ),
                  ),
                ),*/

                Container(
                    padding: EdgeInsets.all(8.0),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.add))),
                Container(
                    padding: EdgeInsets.all(8.0),
                    child: Stack(children: [
                      ...profpic.map(
                        (ui) => ui['username1'] == sky2['username']
                            ? CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.transparent,

                                backgroundImage: NetworkImage(
                                  ui['image'],
                                ), //ui['image'],
                              )
                            : SizedBox(),
                      ),
                    ])),
                SizedBox(
                  width: 5,
                ),
              ],
              elevation: 0,
            ),
            drawer: Drawer(
                elevation: 1.2,
                child: Scaffold(
                  backgroundColor: Colors.grey.shade100,
                  body: SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //ListTile(),
                          ListTile(title: Text("School['R.I.O.T']")),
                          ListTile(
                            onTap: () {
                              _selectedIndex = 0;
                            },
                            leading: Icon(Icons.home),
                            title: Text(
                              "Dashboard",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          ListTile(
                              leading: Icon(Icons.people_outline),
                              title: Text("Staff",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ))),
                          ListTile(
                              leading: Icon(Icons.directions_bus_outlined),
                              title: Text("Buses",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ))),
                        ]),
                  )),
                  bottomNavigationBar: ListTile(
                    onTap: () {
                      /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FriendMess2(
                                        title: i['headline'].toString(),
                                        token: widget.token,
                                        myname: '',
                                        user: sky2['username'],
                                      ),
                                    ), //MaterialPageRoute
                                  );*/
                    },
                    tileColor: Colors.grey.shade100.withOpacity(0.5),
                    leading: const Icon(
                      Icons.library_books,
                      color: Colors.deepPurple,
                    ),
                    title: const Text("Afleet",
                        style: TextStyle(color: Colors.black)),
                    subtitle: const Text("Console",
                        style: const TextStyle(color: Colors.black)),
                  ),
                )),
            body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SingleChildScrollView(
                  child: ConstrainedBox(
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height),
                child: IntrinsicHeight(
                  child: MediaQuery.of(context).size.width < 600
                      ? SizedBox()
                      : NavigationRail(
                          //extended: true,
                          //leading:,
                          //minWidth: MediaQuery.of(context).size.width*.25,
                          // extended: true
                          backgroundColor: Colors.grey.shade50,
                          //selectedIconTheme: Icont,
                          selectedIndex: _selectedIndex,
                          groupAlignment: groupAligment,
                          onDestinationSelected: (int index) {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          labelType: labelType,

                          /*trailing: showTrailing
                        ? IconButton(
                            onPressed: () {
                              // Add your onPressed code here!
                            },
                            icon: const Icon(Icons.more_horiz_rounded),
                          )
                        : const SizedBox(),*/
                          destinations: const <NavigationRailDestination>[
                            NavigationRailDestination(
                              padding: EdgeInsets.all(8.0),
                              selectedIcon: CircleAvatar(
                                  child: Icon(Icons.home_outlined)),
                              icon: Icon(Icons.home),
                              label: Text(''),
                            ),
                            NavigationRailDestination(
                              selectedIcon: CircleAvatar(
                                  child: Icon(Icons.people_outline)),
                              icon: Icon(Icons.people),
                              label: Text(''),
                            ),
                            NavigationRailDestination(
                              icon: Icon(Icons.directions_bus_outlined),
                              selectedIcon: CircleAvatar(
                                  child: Icon(Icons.directions_bus)),
                              label: Text(''),
                            ),
                            NavigationRailDestination(
                              selectedIcon: CircleAvatar(
                                  child: Icon(Icons.calendar_month)),
                              icon: Icon(Icons.calendar_month),
                              label: Text(''),
                            ),
                            NavigationRailDestination(
                              icon: Icon(Icons.feed_sharp),
                              selectedIcon: CircleAvatar(
                                  child: Icon(Icons.feed_outlined)),
                              label: Text(''),
                            ),
                            NavigationRailDestination(
                              icon: Icon(Icons.mail),
                              selectedIcon:
                                  CircleAvatar(child: Icon(Icons.mail_outline)),
                              label: Text(''),
                            ),

                            /*NavigationRailDestination(
                  icon: Icon(Icons.add),
                  //selectedIcon: Icon(Icons.directions_bus_outlined),
                  label: Text('Add'),
                            ),*/
                          ],
                        ),
                ),
              )),
              _selectedIndex == 0
                  ? Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width * .90,
                        child: Scaffold(
                          // Center is a layout widget. It takes a single child and positions it
                          // in the middle of the parent.
                          body: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment:
                                  MediaQuery.of(context).size.height > 600
                                      ? MainAxisAlignment.start
                                      : MainAxisAlignment.start,
                              children: <Widget>[
                                //Text(value2.toString()),

                                SingleChildScrollView(
                                  // scrollDirection: Axis.horizontal,
                                  child: Container(
                                    alignment: Alignment.center,//MainAxisAlignment.center,
                                    padding: EdgeInsets.all(8.0),
                                    //width: MediaQuery.of(context).size.width*2,
                                    child: Wrap(
                                      alignment:
                                          MediaQuery.of(context).size.height >
                                                  600
                                              ? WrapAlignment.start
                                              : WrapAlignment.center,
                                      runSpacing: 10.0,
                                      spacing: 10.0,
                                      //spacing: 10.0,
                                      children: [
                                        ListTile(
                                          trailing: Container(
                                              child: Stack(children: [
                                            CircleAvatar(
                                              radius: 15,
                                              backgroundColor:
                                                  Colors.transparent,
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.search,
                                                    color: Colors.black,
                                                  )),
                                            ),
                                          ])),
                                          tileColor: Colors.grey.shade100
                                              .withOpacity(0.5),
                                          title: const Text("Classes",
                                              style: TextStyle(fontSize: 20)),
                                        ),
                                        //...value2 == null?kn:value2
                                        ...value2.map((i) => MediaQuery.of(context).size.width < 600?Center(
                                          child: InkWell(
                                                child: Container(
                                                  height: 178,
                                                  width: 320,
                                                  child: Container(
                                                    //padding: EdgeInsets.all(3.0),

                                                    child: Material(
                                                        elevation: 0,
                                                        color: colors[
                                                                value2.indexOf(i)]
                                                            .withOpacity(.45),
                                                        shape:
                                                            const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Card(
                                                          elevation: 0,
                                                          color:
                                                              Colors.transparent,
                                                          child: Column(
                                                            children: [
                                                              ListTile(
                                                                title: Text(
                                                                    i['name']
                                                                        .toString(),
                                                                    style: const TextStyle(
                                                                        fontSize:
                                                                            18,
                                                                        color: Colors
                                                                            .black)),
                                                                trailing: InkWell(
                                                                    onTap: () {
                                                                      alist.add(value2
                                                                          .indexOf(
                                                                              i));

                                                                      setState(
                                                                          () {
                                                                        bloody = alist
                                                                            .last;
                                                                      });
                                                                    },
                                                                    child:
                                                                        Container(
                                                                            child:
                                                                                Stack(children: [
                                                                      ...profpic
                                                                          .map(
                                                                        (ui) => ui['username1'] ==
                                                                                i['owner']
                                                                            ? CircleAvatar(
                                                                                radius: 15,
                                                                                backgroundColor: Colors.transparent,

                                                                                backgroundImage: NetworkImage(
                                                                                  ui['image'],
                                                                                ), //ui['image'],
                                                                              )
                                                                            : SizedBox(),
                                                                      ),
                                                                    ]))),
                                                                subtitle: Text(
                                                                  i['owner']
                                                                      .toString(),
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                              Center(
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .only(
                                                                          top: 10,
                                                                          left:
                                                                              10,
                                                                          right:
                                                                              10,
                                                                          bottom:
                                                                              5),
                                                                  child:
                                                                      Container(
                                                                    height: 0.3,
                                                                    width: MediaQuery.of(
                                                                                context)
                                                                            .size
                                                                            .width *
                                                                        8,
                                                                    color: darkmode
                                                                        ? Colors.grey[
                                                                            300]
                                                                        : Colors.grey[
                                                                            500],
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                height: 10,
                                                              ),
                                                              ListTile(
                                                                //title:Text("Students"),
                                                                subtitle: Row(
                                                                    children: [
                                                                      Stack(
                                                                        clipBehavior:
                                                                            Clip.none,
                                                                        children: const [
                                                                          CircleAvatar(
                                                                            radius:
                                                                                15,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            child: Center(
                                                                                child: Icon(
                                                                              Icons.group,
                                                                              size:
                                                                                  20,
                                                                              color:
                                                                                  Colors.deepPurple,
                                                                            )),
                                                                          )
                                                                        ],
                                                                      ),
                                                                      SizedBox(
                                                                        width: MediaQuery.of(context)
                                                                                .size
                                                                                .width *
                                                                            0.01,
                                                                      ),
                                                                      Text(
                                                                          i['students']
                                                                              .length
                                                                              .toString(), //number of students
                                                                          style:
                                                                              const TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color:
                                                                                Colors.black,
                                                                          )),
                                                                      SizedBox(
                                                                        width: 5,
                                                                      ),
                                                                      Stack(
                                                                        clipBehavior:
                                                                            Clip.none,
                                                                        children: const [
                                                                          CircleAvatar(
                                                                            radius:
                                                                                15,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            child: Center(
                                                                                child: Icon(
                                                                              Icons.notifications_active,
                                                                              size:
                                                                                  20,
                                                                              color:
                                                                                  Colors.deepPurple,
                                                                            )),
                                                                          )
                                                                        ],
                                                                      ),
                                                                      SizedBox(
                                                                        width: MediaQuery.of(context)
                                                                                .size
                                                                                .width *
                                                                            0.01,
                                                                      ),
                                                                      Text(
                                                                          info3
                                                                              .where((ry) =>
                                                                                  ry['whoiswho'].toString() == 'notification' &&
                                                                                  ry['to'].split(',')[0].toString().replaceAll('[', '') == i['name'].toString())
                                                                              .length
                                                                              .toString(), //number of students
                                                                          style: const TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color:
                                                                                Colors.black,
                                                                          ))
                                                                    ]),
                                                                title: Row(
                                                                  children: [
                                                                    Text("",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              lighttext,
                                                                          fontSize:
                                                                              13,
                                                                        ))
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )),
                                                  ),
                                                ),
                                                onTap: () {
                                                  alist.add(value2.indexOf(i));

                                                  setState(() {
                                                    bloody = alist.last;
                                                  });
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              communications(
                                                                important1: alist
                                                                            .length >
                                                                        0
                                                                    ? value2[alist
                                                                            .last]
                                                                        [
                                                                        'students']
                                                                    : value2[
                                                                            bloody]
                                                                        [
                                                                        'students'],
                                                                kala1: darkmode,
                                                                username:
                                                                    sky2['username'],
                                                                klass: alist.length >
                                                                        0
                                                                    ? value2[alist
                                                                            .last]
                                                                        ['name']
                                                                    : value2[
                                                                            bloody]
                                                                        ['name'],
                                                                school: alist
                                                                            .length >
                                                                        0
                                                                    ? value2[alist
                                                                            .last]
                                                                        ['school']
                                                                    : value2[
                                                                            bloody]
                                                                        [
                                                                        'school'],
                                                                //title1: ['',''],
                                                                tr: widget.tokenx,
                                                              )));
                                                  //  },

                                                  /*showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            //  sum = 0;
                                            //var given_list = [1, 2, 3, 4, 5];
              
                                            return Scaffold(
                                              backgroundColor: light,
                                              appBar: AppBar(
                                                  centerTitle: true,
                                                  title: Text(i['headline'],
                                                      style: TextStyle(
                                                          color: lighttext)),
                                                  elevation: 0.0,
                                                  backgroundColor: light),
                                              body: SingleChildScrollView(
                                                  child: Column(
                                                children: [
                                                  /*
                                                          "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                                                          */
                                                  ListTile(
                                                      onTap: () {
                                                        /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FriendMess2(
                                    title: i['headline'].toString(),
                                    token: widget.token,
                                    myname: '',
                                    user: sky2['username'],
                                ),
                              ), //MaterialPageRoute
                            );*/
                                                      }, //tileColor:
                                                      tileColor: Colors.black12,
                                                      leading: Icon(
                                                          Icons.mail_outline,
                                                          color: Colors.deepPurple),
                                                      title: Text(
                                                        "Chat",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      ),
                                                      subtitle: Text(
                                                        "message",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      )),
                                                  ListTile(
                                                      leading: Icon(
                                                        Icons.calendar_today,
                                                        color: Colors.deepPurple,
                                                      ),
                                                      title: Text(
                                                        "Day Taught",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      ),
                                                      subtitle: Text(
                                                        i['day_taught'],
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      )),
                                                  ListTile(
                                                      leading: Icon(Icons.av_timer,
                                                          color: Colors.deepPurple),
                                                      title: Text(
                                                        "Time Duration",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      ),
                                                      subtitle: Text(
                                                        i['time_duration'],
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      )),
                                                  ListTile(
                                                      leading: Icon(Icons.now_widgets,
                                                          color: Colors.deepPurple),
                                                      title: Text(
                                                        "Code",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      ),
                                                      subtitle: Text(
                                                        i['code'],
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      )),
                                                  ListTile(
                                                      leading: Icon(
                                                          Icons.person_outlined,
                                                          color: Colors.deepPurple),
                                                      title: Text(
                                                        "Teacher",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      ),
                                                      subtitle: Text(
                                                        i['teacher'],
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      )),
                                                  ListTile(
                                                      leading: Icon(Icons.place,
                                                          color: Colors.deepPurple),
                                                      title: Text(
                                                        "Place Taught",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      ),
                                                      subtitle: Text(
                                                        i['place_taught'],
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      )),
                                                ],
                                              )),
                                              //bottoma navigation bar
                                            );
                                          });
                                     Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder: (context) => Chatscreen(
                                                                            titlex: i['unit_name'],
                                                                            title: i,
                                                                          ) //screen(),
                                                                      ), //MaterialPageRoute
                                                                );*/
                                                },
                                              ),
                                        ):InkWell(
                                                child: Container(
                                                  height: 178,
                                                  width: 320,
                                                  child: Container(
                                                    //padding: EdgeInsets.all(3.0),

                                                    child: Material(
                                                        elevation: 0,
                                                        color: colors[
                                                                value2.indexOf(i)]
                                                            .withOpacity(.45),
                                                        shape:
                                                            const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Card(
                                                          elevation: 0,
                                                          color:
                                                              Colors.transparent,
                                                          child: Column(
                                                            children: [
                                                              ListTile(
                                                                title: Text(
                                                                    i['name']
                                                                        .toString(),
                                                                    style: const TextStyle(
                                                                        fontSize:
                                                                            18,
                                                                        color: Colors
                                                                            .black)),
                                                                trailing: InkWell(
                                                                    onTap: () {
                                                                      alist.add(value2
                                                                          .indexOf(
                                                                              i));

                                                                      setState(
                                                                          () {
                                                                        bloody = alist
                                                                            .last;
                                                                      });
                                                                    },
                                                                    child:
                                                                        Container(
                                                                            child:
                                                                                Stack(children: [
                                                                      ...profpic
                                                                          .map(
                                                                        (ui) => ui['username1'] ==
                                                                                i['owner']
                                                                            ? CircleAvatar(
                                                                                radius: 15,
                                                                                backgroundColor: Colors.transparent,

                                                                                backgroundImage: NetworkImage(
                                                                                  ui['image'],
                                                                                ), //ui['image'],
                                                                              )
                                                                            : SizedBox(),
                                                                      ),
                                                                    ]))),
                                                                subtitle: Text(
                                                                  i['owner']
                                                                      .toString(),
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ),
                                                              Center(
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .only(
                                                                          top: 10,
                                                                          left:
                                                                              10,
                                                                          right:
                                                                              10,
                                                                          bottom:
                                                                              5),
                                                                  child:
                                                                      Container(
                                                                    height: 0.3,
                                                                    width: MediaQuery.of(
                                                                                context)
                                                                            .size
                                                                            .width *
                                                                        8,
                                                                    color: darkmode
                                                                        ? Colors.grey[
                                                                            300]
                                                                        : Colors.grey[
                                                                            500],
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                height: 10,
                                                              ),
                                                              ListTile(
                                                                //title:Text("Students"),
                                                                subtitle: Row(
                                                                    children: [
                                                                      Stack(
                                                                        clipBehavior:
                                                                            Clip.none,
                                                                        children: const [
                                                                          CircleAvatar(
                                                                            radius:
                                                                                15,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            child: Center(
                                                                                child: Icon(
                                                                              Icons.group,
                                                                              size:
                                                                                  20,
                                                                              color:
                                                                                  Colors.deepPurple,
                                                                            )),
                                                                          )
                                                                        ],
                                                                      ),
                                                                      SizedBox(
                                                                        width: MediaQuery.of(context)
                                                                                .size
                                                                                .width *
                                                                            0.01,
                                                                      ),
                                                                      Text(
                                                                          i['students']
                                                                              .length
                                                                              .toString(), //number of students
                                                                          style:
                                                                              const TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color:
                                                                                Colors.black,
                                                                          )),
                                                                      SizedBox(
                                                                        width: 5,
                                                                      ),
                                                                      Stack(
                                                                        clipBehavior:
                                                                            Clip.none,
                                                                        children: const [
                                                                          CircleAvatar(
                                                                            radius:
                                                                                15,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            child: Center(
                                                                                child: Icon(
                                                                              Icons.notifications_active,
                                                                              size:
                                                                                  20,
                                                                              color:
                                                                                  Colors.deepPurple,
                                                                            )),
                                                                          )
                                                                        ],
                                                                      ),
                                                                      SizedBox(
                                                                        width: MediaQuery.of(context)
                                                                                .size
                                                                                .width *
                                                                            0.01,
                                                                      ),
                                                                      Text(
                                                                          info3
                                                                              .where((ry) =>
                                                                                  ry['whoiswho'].toString() == 'notification' &&
                                                                                  ry['to'].split(',')[0].toString().replaceAll('[', '') == i['name'].toString())
                                                                              .length
                                                                              .toString(), //number of students
                                                                          style: const TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color:
                                                                                Colors.black,
                                                                          ))
                                                                    ]),
                                                                title: Row(
                                                                  children: [
                                                                    Text("",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              lighttext,
                                                                          fontSize:
                                                                              13,
                                                                        ))
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )),
                                                  ),
                                                ),
                                                onTap: () {
                                                  alist.add(value2.indexOf(i));

                                                  setState(() {
                                                    bloody = alist.last;
                                                  });
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              communications(
                                                                important1: alist
                                                                            .length >
                                                                        0
                                                                    ? value2[alist
                                                                            .last]
                                                                        [
                                                                        'students']
                                                                    : value2[
                                                                            bloody]
                                                                        [
                                                                        'students'],
                                                                kala1: darkmode,
                                                                username:
                                                                    sky2['username'],
                                                                klass: alist.length >
                                                                        0
                                                                    ? value2[alist
                                                                            .last]
                                                                        ['name']
                                                                    : value2[
                                                                            bloody]
                                                                        ['name'],
                                                                school: alist
                                                                            .length >
                                                                        0
                                                                    ? value2[alist
                                                                            .last]
                                                                        ['school']
                                                                    : value2[
                                                                            bloody]
                                                                        [
                                                                        'school'],
                                                                //title1: ['',''],
                                                                tr: widget.tokenx,
                                                              )));
                                                  //  },

                                                  /*showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            //  sum = 0;
                                            //var given_list = [1, 2, 3, 4, 5];
              
                                            return Scaffold(
                                              backgroundColor: light,
                                              appBar: AppBar(
                                                  centerTitle: true,
                                                  title: Text(i['headline'],
                                                      style: TextStyle(
                                                          color: lighttext)),
                                                  elevation: 0.0,
                                                  backgroundColor: light),
                                              body: SingleChildScrollView(
                                                  child: Column(
                                                children: [
                                                  /*
                                                          "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                                                          */
                                                  ListTile(
                                                      onTap: () {
                                                        /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FriendMess2(
                                    title: i['headline'].toString(),
                                    token: widget.token,
                                    myname: '',
                                    user: sky2['username'],
                                ),
                              ), //MaterialPageRoute
                            );*/
                                                      }, //tileColor:
                                                      tileColor: Colors.black12,
                                                      leading: Icon(
                                                          Icons.mail_outline,
                                                          color: Colors.deepPurple),
                                                      title: Text(
                                                        "Chat",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      ),
                                                      subtitle: Text(
                                                        "message",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      )),
                                                  ListTile(
                                                      leading: Icon(
                                                        Icons.calendar_today,
                                                        color: Colors.deepPurple,
                                                      ),
                                                      title: Text(
                                                        "Day Taught",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      ),
                                                      subtitle: Text(
                                                        i['day_taught'],
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      )),
                                                  ListTile(
                                                      leading: Icon(Icons.av_timer,
                                                          color: Colors.deepPurple),
                                                      title: Text(
                                                        "Time Duration",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      ),
                                                      subtitle: Text(
                                                        i['time_duration'],
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      )),
                                                  ListTile(
                                                      leading: Icon(Icons.now_widgets,
                                                          color: Colors.deepPurple),
                                                      title: Text(
                                                        "Code",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      ),
                                                      subtitle: Text(
                                                        i['code'],
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      )),
                                                  ListTile(
                                                      leading: Icon(
                                                          Icons.person_outlined,
                                                          color: Colors.deepPurple),
                                                      title: Text(
                                                        "Teacher",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      ),
                                                      subtitle: Text(
                                                        i['teacher'],
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      )),
                                                  ListTile(
                                                      leading: Icon(Icons.place,
                                                          color: Colors.deepPurple),
                                                      title: Text(
                                                        "Place Taught",
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      ),
                                                      subtitle: Text(
                                                        i['place_taught'],
                                                        style: TextStyle(
                                                            color: lighttext),
                                                      )),
                                                ],
                                              )),
                                              //bottoma navigation bar
                                            );
                                          });
                                     Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder: (context) => Chatscreen(
                                                                            titlex: i['unit_name'],
                                                                            title: i,
                                                                          ) //screen(),
                                                                      ), //MaterialPageRoute
                                                                );*/
                                                },
                                              ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
              _selectedIndex == 1
                  ? Expanded(
                      child: Container(
                          width: MediaQuery.of(context).size.width * .9,
                          child: Scaffold(
                              body: Column(children: [
                            ListTile(
                              title: Text("Search",
                                  style: TextStyle(fontSize: 20)),
                              trailing: Container(
                                  child: Stack(children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.transparent,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.search,
                                        color: Colors.black,
                                      )),
                                ),
                              ])),
                            ),
                            ...[
                              "Teacher a",
                              "Teacher b",
                              "Teacher c",
                              "Teacher d",
                              "Driver 1",
                              'Driver 2'
                            ].map((c) => ListTile(
                                leading: FloatingActionButton(
                                    onPressed: () {},
                                    child: Icon(Icons.person)),
                                title: Text(c),
                                subtitle: Text("title"),
                                //trailing: InkWell(child: Icon(Icons.message)),
                                onTap: () {
/*Navigator.push(
                                    context,jk jgf fdj gfdj  gfdg;
                                    hjhhj glass();
                                    MaterialPageRoute(
                                        builder: (context) => xcx(
                                          title: 'Class Notificatin',
                                          token:'',
                                          myname:'Fees'
                                          
                                          ,user:i['username'].toString()
                                 //             first: er['students'],
                                            )));*/
                                })),
                          ]))),
                    )
                  : const SizedBox(),
              _selectedIndex == 2
                  ? Expanded(
                      child: Container(
                          width: MediaQuery.of(context).size.width * .9,
                          child: const trans()),
                    )
                  : const SizedBox(),
              _selectedIndex == 3
                  ? Expanded(
                      child: Container(
                          width: MediaQuery.of(context).size.width * .9,
                          child: const Scaffold()),
                    )
                  : const SizedBox(),
            ]),
            // This trailing comma makes auto-formatting nicer for build methods.
          );
  }
}
