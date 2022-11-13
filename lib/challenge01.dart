import 'package:challenge/challenge02.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Challenge01 extends StatefulWidget {
  const Challenge01({super.key});

  @override
  State<Challenge01> createState() => _Challenge01State();
}

class _Challenge01State extends State<Challenge01> {
  // Route _createRoute() {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) =>
  //         const Challenge02(),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       const begin = Offset(1.0, 1.0);
  //       const end = Offset.zero;
  //       final tween = Tween(begin: begin, end: end);
  //       final offsetAnimation = animation.drive(tween);

  //       return SlideTransition(
  //         position: offsetAnimation,
  //         child: child,
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Challenge01',
        ),
        actions: [
          IconButton(
            // onPressed: () => Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const Challenge02(),
            //   ),
            // ),
            // onPressed: () {
            //   Navigator.of(context).push(_createRoute());
            // },
            onPressed: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.rightToLeftJoined,
                childCurrent: widget,
                duration: Duration(seconds: 2),
                reverseDuration: Duration(seconds: 2),
                child: Challenge02(),
              ),
            ),

            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                //color: Colors.blueAccent,
                child: Image.network(
                  "https://www.tourneau.com/on/demandware.static/-/Sites-master-catalog/default/dw31c4264c/images/large/wjbb0037-cartier-ballon-bleu-de-cartier-36mm-car0355608.png",
                ),

                // child: Column(
                //   children: [
                //     Image.asset(
                //       "images/watch.jpg",
                //       height: 200,
                //       width: 200,
                //     ),
                //   ],
                // ),
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              fit: StackFit.passthrough,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                        width: 5.00,
                        color: const Color(0xffeceaea),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          'CARTIER',
                          style: TextStyle(
                            fontFamily: "Segoe UI",
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          'A23456',
                          style: TextStyle(
                            fontFamily: "Segoe UI",
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff4e4848),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'This is a new Clock. Lots of facilities. It\'s a waterproof clock. Real gols Effect. Liftime grantee. Limited Edition.',
                          style: TextStyle(
                            fontFamily: "Segoe UI",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff514d51),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$165',
                          style: TextStyle(
                            fontFamily: "Segoe UI",
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffe510d0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: -30,
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          //child: Image.asset("images/plus.png")
                          child: Icon(
                            Icons.add,
                          ),
                        ),
                      ),
                    )
                    // child: Container(
                    //   height: 70,
                    //   width: 70,
                    //   decoration: const BoxDecoration(
                    //     color: Colors.red,
                    //     borderRadius: BorderRadius.all(Radius.circular(60.0)),
                    //   ),
                    // ),
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
