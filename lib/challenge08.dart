import 'package:flutter/material.dart';

class Challenge08 extends StatefulWidget {
  const Challenge08({super.key});

  @override
  State<Challenge08> createState() => _Challenge08State();
}

class _Challenge08State extends State<Challenge08> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: boxColor, body: Body());
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
//  late int selectindex;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hello Almamun",
                      style: TextStyle(fontSize: 16, color: Color(0xff869CEE)),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Find A ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        Text("Workout",
                            style: TextStyle(
                                color: Color(0xff4F59DC),
                                fontSize: 20,
                                fontWeight: FontWeight.w900))
                      ],
                    )
                  ],
                ),
                Icon(Icons.search)
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 190,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(130),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                  ),
                ),
                Image.asset(
                  "assets/images/Group 1.png",
                  height: 220,
                ),
                Positioned(
                    top: 30,
                    right: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text("Legs ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800)),
                                Text("and ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text("Glutes ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800)),
                                Text("workout ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/Group 2359.png",
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Advanced",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: <Widget>[
                                  Image.asset("assets/images/stopwatch.png",
                                      height: 10, color: Colors.white),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "45 min",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => page()));
                                  });
                                },
                                child: Container(
                                  height: 35,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.15),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text(
                                      "Start Workout",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Container(
              height: 128.4,
              color: boxColor,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Today's Activity",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Details",
                            style: TextStyle(color: textColor),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          today.length,
                          (index) => todayAC(
                                index: index,
                              )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Container(
              height: 135,
              color: boxColor,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Daily Activity",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Details",
                            style: TextStyle(color: textColor),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          daily.length,
                          (index) => dailyAC(
                                index: index,
                              )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 84,
            width: MediaQuery.of(context).size.width,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
                    List.generate(navigation.length, (index) => nav(index))),
          )
        ],
      ),
    );
  }

  Widget nav(int index) => InkWell(
        onTap: () {
          // setState(() {
          //   selectindex = index;
          // });
        },
        child: Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: kboxShadow,
          ),
          //   child: selectindex == index
          //       ? Container(
          //           height: 59,
          //           width: 59,
          //           decoration: BoxDecoration(
          //               color: boxColor,
          //               borderRadius: BorderRadius.circular(20),
          //               boxShadow: kIShadow),
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: <Widget>[
          //               Image.asset(
          //                 navigation[index].icon,
          //                 height: 22,
          //                 color: textColor,
          //               ),
          //               SizedBox(
          //                 width: 5,
          //               ),
          //               Text(
          //                 navigation[index].title,
          //                 style: TextStyle(color: textColor),
          //               )
          //             ],
          //           ),
          //         )
          //       : Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: <Widget>[
          //             Image.asset(
          //               navigation[index].icon,
          //               height: 22,
          //               color: Colors.grey,
          //             ),
          //             SizedBox(
          //               width: 5,
          //             ),
          //             Text(
          //               navigation[index].title,
          //               style: TextStyle(color: Colors.grey),
          //             )
          //           ],
          //         ),
        ),
      );
}

class todayAC extends StatelessWidget {
  const todayAC({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.2),
      child: Padding(
        padding: const EdgeInsets.only(right: 6),
        child: Container(
          height: 80,
          width: 140,
          margin: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: boxColor,
              boxShadow: kboxShadow),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    today[index].icon,
                    height: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    today[index].title,
                    style: TextStyle(letterSpacing: 2),
                  )
                ],
              ),
              Text(
                today[index].count,
                style: TextStyle(
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class dailyAC extends StatelessWidget {
  const dailyAC({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.2),
      child: Padding(
        padding: const EdgeInsets.only(right: 6),
        child: Container(
          height: 80,
          width: 66,
          margin: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: boxColor,
              boxShadow: kboxShadow),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                daily[index].day,
                style: TextStyle(
                    letterSpacing: 0, fontSize: 12, color: Colors.grey),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                daily[index].date,
                style: TextStyle(
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Color textColor = Color(0xff3E67D6);
Color boxColor = Color(0xFFEFF3FF);

final kboxShadow = [
  BoxShadow(color: Colors.white, offset: Offset(-10, -10), blurRadius: 10),
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      offset: Offset(4, 4),
      blurRadius: 15)
];

final kIShadow = [
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      //blurRadius: 1,
      spreadRadius: 2,
      offset: Offset(-1, 1)),
  BoxShadow(
      color: Colors.white.withOpacity(.7),
      spreadRadius: 2,
      offset: Offset(1, -1)),
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      spreadRadius: 2,
      //  blurRadius: 1,
      offset: Offset(-1, -1)),
  BoxShadow(
      color: Colors.white.withOpacity(.7),
      spreadRadius: 2,
      offset: Offset(1, 1)),
];

class DailyActivity {
  final String day, date;
  DailyActivity({required this.day, required this.date});
}

class Navigation {
  final String icon, title;
  Navigation({required this.icon, required this.title});
}

List<Navigation> navigation = [
  Navigation(title: "Home", icon: "assets/images/Group 2361.png"),
  Navigation(
      title: "Activity", icon: "assets/images/Icon feather-activity.png"),
  Navigation(
      title: "Settings", icon: "assets/images/Icon feather-settings.png"),
  Navigation(title: "Profile", icon: "assets/images/Icon feather-user.png"),
];

List<DailyActivity> daily = [
  DailyActivity(
    day: "MON",
    date: "8",
  ),
  DailyActivity(
    day: "SUN",
    date: "7",
  ),
  DailyActivity(
    day: "SAT",
    date: "6",
  ),
  DailyActivity(
    day: "FRI",
    date: "5",
  ),
  DailyActivity(
    day: "THU",
    date: "4",
  ),
  DailyActivity(
    day: "WED",
    date: "3",
  ),
  DailyActivity(
    day: "TUE",
    date: "2",
  ),
  DailyActivity(
    day: "MON",
    date: "1",
  ),
];

class TodayActivity {
  final String icon, title, count;

  TodayActivity({required this.icon, required this.count, required this.title});
}

List<TodayActivity> today = [
  TodayActivity(
    icon: "assets/images/trail-running-shoe (1).png",
    title: "Steps",
    count: "1,254",
  ),
  TodayActivity(
    icon: "assets/images/weight.png",
    title: "Calories",
    count: "826",
  ),
  TodayActivity(
    icon: "assets/images/cardiogram (1).png",
    title: "BPM",
    count: "88.0",
  ),
];

class Activity {
  final String icon, title;
  Activity({required this.icon, required this.title});
}

List<Activity> item = [
  Activity(icon: "assets/images/trail-running-shoe (1).png", title: "Walking"),
  Activity(icon: "assets/images/treadmill (1).png", title: "Tradmill"),
  Activity(icon: "assets/images/running (2).png", title: "Running"),
  Activity(icon: "assets/images/bike (2).png", title: "Cycling"),
  Activity(icon: "assets/images/gym.png", title: "Gym"),
  Activity(icon: "assets/images/Path 1711.png", title: "Yoge"),
];

class page extends StatefulWidget {
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: boxColor,
      appBar: AppBar(
        backgroundColor: boxColor,
        elevation: 0,
        title: Row(
          children: <Widget>[
            Text(
              "Start ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Activity",
              style: TextStyle(
                  color: Color(0xff5868E0),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        titleSpacing: 85,
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => page()));
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.asset(
              "assets/images/Group 2359 - Copy.png",
              width: 40,
            ),
          ),
        ),
      ),
      body: pageBody(),
    );
  }
}

class pageBody extends StatefulWidget {
  @override
  _pageBodyState createState() => _pageBodyState();
}

class _pageBodyState extends State<pageBody> {
  late int selectindex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        children: <Widget>[
          Container(
            color: boxColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: <Widget>[
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    childAspectRatio: 1,
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 6.8,
                    children: List.generate(
                        item.length,
                        (index) => itemList(
                              index: index,
                            )),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              height: 84,
              width: MediaQuery.of(context).size.width,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                      List.generate(navigation.length, (index) => nav(index))),
            ),
          )
        ],
      ),
    );
  }

  Widget nav(int index) => InkWell(
        onTap: () {
          setState(() {
            selectindex = index;
          });
        },
        child: Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: kboxShadow,
          ),
          child: selectindex == index
              ? Container(
                  height: 59,
                  width: 59,
                  decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: kIShadow),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        navigation[index].icon,
                        height: 22,
                        color: textColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        navigation[index].title,
                        style: TextStyle(color: textColor),
                      )
                    ],
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      navigation[index].icon,
                      height: 22,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      navigation[index].title,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
        ),
      );
}

class itemList extends StatelessWidget {
  const itemList({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: boxColor,
            boxShadow: kboxShadow),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              item[index].icon,
              height: 30,
            ),
            SizedBox(
              height: 20,
            ),
            Text(item[index].title, style: TextStyle(color: textColor))
          ],
        ),
      ),
    );
  }
}
