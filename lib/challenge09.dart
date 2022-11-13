import 'package:badges/badges.dart';
import 'package:challenge/challenge10.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class NeoComp extends StatefulWidget {
  const NeoComp({super.key});

  @override
  State<NeoComp> createState() => _NeoCompState();
}

class _NeoCompState extends State<NeoComp> {
  bool isPressed = true; //clickable button
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#E5E5E5'),
      appBar: AppBar(
        title: Text('Neomorphic Components'),
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
                type: PageTransitionType.rightToLeftPop,
                childCurrent: widget,
                duration: Duration(seconds: 1),
                reverseDuration: Duration(seconds: 1),
                child: Neumorphism(),
              ),
            ),

            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Basic State',
              style: TextStyle(
                color: HexColor('#575F6B'),
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => setState(() => isPressed = !isPressed),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [HexColor('#F2F3F6'), HexColor('#E5E6EC')],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          stops: [0.04, 1.19],
                          tileMode: TileMode.clamp,
                        ),
                        //borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            color: isPressed
                                ? Color.fromRGBO(36, 65, 93, 0.302)
                                : Color.fromRGBO(88, 108, 138, 0.5),
                            spreadRadius: 1.0,
                            blurRadius: isPressed ? 6.0 : 3.0,
                            offset: isPressed ? Offset(3, 3) : Offset(5, 5),
                            inset: isPressed,
                          ),
                          BoxShadow(
                            color: HexColor('#FFFFFF'),
                            spreadRadius: 1.0,
                            blurRadius: isPressed ? 6.0 : 3.0,
                            offset: isPressed ? Offset(-4, -4) : Offset(-4, -4),
                            inset: isPressed,
                          )
                        ]),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [HexColor('#F2F3F6'), HexColor('#E5E6EC')],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        stops: [0.04, 1.19],
                        tileMode: TileMode.clamp,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      //color: Colors.grey[300],
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(36, 65, 93, 0.302),
                          spreadRadius: 3.0,
                          blurRadius: 6.0,
                          offset: Offset(3, 3),
                        ),
                        BoxShadow(
                          color: HexColor('#FFFFFF'),
                          spreadRadius: 3.0,
                          blurRadius: 6.0,
                          offset: Offset(-4, -4),
                        )
                      ]),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [HexColor('#F2F3F6'), HexColor('#E5E6EC')],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        stops: [0.04, 1.19],
                        tileMode: TileMode.clamp,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      //color: Colors.grey[300],
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(36, 65, 93, 0.302),
                          spreadRadius: 3.0,
                          blurRadius: 6.0,
                          offset: Offset(3, 3),
                        ),
                        BoxShadow(
                          color: HexColor('#FFFFFF'),
                          spreadRadius: 3.0,
                          blurRadius: 6.0,
                          offset: Offset(-4, -4),
                        )
                      ]),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      // gradient: LinearGradient(
                      //   colors: [HexColor('#F2F3F6'), HexColor('#E5E6EC')],
                      //   begin: Alignment.bottomLeft,
                      //   end: Alignment.topRight,
                      //   stops: [0.04, 1.19],
                      //   tileMode: TileMode.clamp,
                      // ),
                      //borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[300],
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(88, 108, 138, 0.5),
                          spreadRadius: 1.0,
                          blurRadius: 3.0,
                          offset: Offset(5, 5),
                          inset: true,
                        ),
                        BoxShadow(
                          color: HexColor('#FFFFFF'),
                          spreadRadius: 1.0,
                          blurRadius: 3.0,
                          offset: Offset(-4, -4),
                          inset: true,
                        ),
                      ]),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //   colors: [HexColor('#F2F3F6'), HexColor('#E5E6EC')],
                    //   begin: Alignment.bottomLeft,
                    //   end: Alignment.topRight,
                    //   stops: [0.04, 1.19],
                    //   tileMode: TileMode.clamp,
                    // ),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(88, 108, 138, 0.5),
                        spreadRadius: 1.0,
                        blurRadius: 3.0,
                        offset: Offset(5, 5),
                        inset: true,
                      ),
                      BoxShadow(
                        color: HexColor('#FFFFFF'),
                        spreadRadius: 1.0,
                        blurRadius: 3.0,
                        offset: Offset(-4, -4),
                        inset: true,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //   colors: [HexColor('#F2F3F6'), HexColor('#E5E6EC')],
                    //   begin: Alignment.bottomLeft,
                    //   end: Alignment.topRight,
                    //   stops: [0.04, 1.19],
                    //   tileMode: TileMode.clamp,
                    // ),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(88, 108, 138, 0.5),
                        spreadRadius: 1.0,
                        blurRadius: 3.0,
                        offset: Offset(5, 5),
                        inset: true,
                      ),
                      BoxShadow(
                        color: HexColor('#FFFFFF'),
                        spreadRadius: 1.0,
                        blurRadius: 3.0,
                        offset: Offset(-4, -4),
                        inset: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Basic Buttons and Components',
              style: TextStyle(
                color: HexColor('#575F6B'),
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.add,
                    size: 25,
                    color: HexColor('#575F6B'),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [HexColor('#F2F3F6'), HexColor('#E5E6EC')],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        stops: [0.04, 1.19],
                        tileMode: TileMode.clamp,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      //color: Colors.grey[300],
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(36, 65, 93, 0.302),
                          spreadRadius: 3.0,
                          blurRadius: 6.0,
                          offset: Offset(3, 3),
                        ),
                        BoxShadow(
                          color: HexColor('#FFFFFF'),
                          spreadRadius: 3.0,
                          blurRadius: 6.0,
                          offset: Offset(-4, -4),
                        )
                      ]),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.remove,
                    size: 25,
                    color: HexColor('#575F6B'),
                  ),
                  decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //   colors: [HexColor('#F2F3F6'), HexColor('#E5E6EC')],
                    //   begin: Alignment.bottomLeft,
                    //   end: Alignment.topRight,
                    //   stops: [0.04, 1.19],
                    //   tileMode: TileMode.clamp,
                    // ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(88, 108, 138, 0.5),
                        spreadRadius: 1.0,
                        blurRadius: 3.0,
                        offset: Offset(5, 5),
                        inset: true,
                      ),
                      BoxShadow(
                        color: HexColor('#FFFFFF'),
                        spreadRadius: 1.0,
                        blurRadius: 3.0,
                        offset: Offset(-4, -4),
                        inset: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.done,
                    size: 25,
                    color: HexColor('#575F6B'),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [HexColor('#F2F3F6'), HexColor('#E5E6EC')],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        stops: [0.04, 1.19],
                        tileMode: TileMode.clamp,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      //color: Colors.grey[300],
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(36, 65, 93, 0.302),
                          spreadRadius: 3.0,
                          blurRadius: 6.0,
                          offset: Offset(3, 3),
                        ),
                        BoxShadow(
                          color: HexColor('#FFFFFF'),
                          spreadRadius: 3.0,
                          blurRadius: 6.0,
                          offset: Offset(-4, -4),
                        )
                      ]),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.close,
                    size: 25,
                    color: HexColor('#575F6B'),
                  ),
                  decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //   colors: [HexColor('#F2F3F6'), HexColor('#E5E6EC')],
                    //   begin: Alignment.bottomLeft,
                    //   end: Alignment.topRight,
                    //   stops: [0.04, 1.19],
                    //   tileMode: TileMode.clamp,
                    // ),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(88, 108, 138, 0.5),
                        spreadRadius: 1.0,
                        blurRadius: 3.0,
                        offset: Offset(5, 5),
                        inset: true,
                      ),
                      BoxShadow(
                        color: HexColor('#FFFFFF'),
                        spreadRadius: 1.0,
                        blurRadius: 3.0,
                        offset: Offset(-4, -4),
                        inset: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Container(
                          height: 50,
                          width: 60,
                          // child: Icon(
                          //   Icons.arrow_back,
                          //   size: 25,
                          //   color: HexColor('#575F6B'),
                          // ),
                          decoration: BoxDecoration(
                            // gradient: LinearGradient(
                            //   colors: [HexColor('#F2F3F6'), HexColor('#E5E6EC')],
                            //   begin: Alignment.bottomLeft,
                            //   end: Alignment.topRight,
                            //   stops: [0.04, 1.19],
                            //   tileMode: TileMode.clamp,
                            // ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300],
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(88, 108, 138, 0.5),
                                spreadRadius: 1.0,
                                blurRadius: 3.0,
                                offset: Offset(5, 5),
                                inset: true,
                              ),
                              BoxShadow(
                                color: HexColor('#FFFFFF'),
                                spreadRadius: 1.0,
                                blurRadius: 3.0,
                                offset: Offset(-4, -4),
                                inset: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [HexColor('#F2F3F6'), HexColor('#E5E6EC')],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        stops: [0.04, 1.19],
                        tileMode: TileMode.clamp,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      //color: Colors.grey[300],
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(36, 65, 93, 0.302),
                          spreadRadius: 3.0,
                          blurRadius: 6.0,
                          offset: Offset(3, 3),
                        ),
                        BoxShadow(
                          color: HexColor('#FFFFFF'),
                          spreadRadius: 3.0,
                          blurRadius: 6.0,
                          offset: Offset(-4, -4),
                        )
                      ]),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Badge(
                    toAnimate: false,
                    shape: BadgeShape.circle,
                    badgeColor: HexColor('#F2F3F6'),
                    borderRadius: BorderRadius.circular(8),
                    badgeContent:
                        Text('4', style: TextStyle(color: HexColor('#575F6B'))),
                    child: Icon(
                      Icons.person,
                      size: 25,
                      color: HexColor('#575F6B'),
                    ),
                    elevation: 6,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [HexColor('#F2F3F6'), HexColor('#E5E6EC')],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      stops: [0.04, 1.19],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    //color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(36, 65, 93, 0.302),
                        spreadRadius: 3.0,
                        blurRadius: 6.0,
                        offset: Offset(3, 3),
                      ),
                      BoxShadow(
                        color: HexColor('#FFFFFF'),
                        spreadRadius: 3.0,
                        blurRadius: 6.0,
                        offset: Offset(-4, -4),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
