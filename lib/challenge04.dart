// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:challenge/challenge05.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Challenge04 extends StatefulWidget {
  const Challenge04({super.key});

  @override
  State<Challenge04> createState() => _Challenge04State();
}

class _Challenge04State extends State<Challenge04>
    with TickerProviderStateMixin {
  double turns = 0.0;
  bool isClicked = false;
  late AnimationController _controller;
  Color customBlackColor = const Color.fromARGB(255, 53, 53, 53);
  Color customWhiteColor = const Color.fromARGB(255, 237, 237, 237);
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  //
  // SET ICONS HERE

  var icons1 = Icons.home;
  var icons2 = Icons.settings;
  var icons3 = Icons.favorite;
  var icons4 = Icons.message;

  //

  bool buttonPressed1 = false;
  bool buttonPressed2 = false;
  bool buttonPressed3 = false;
  bool buttonPressed4 = false;

  void _letsPress1() {
    setState(() {
      buttonPressed1 = true;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
    });
  }

  void _letsPress2() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = true;
      buttonPressed3 = false;
      buttonPressed4 = false;
    });
  }

  void _letsPress3() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = true;
      buttonPressed4 = false;
    });
  }

  void _letsPress4() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = true;
    });
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Challenge05(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.linear;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customWhiteColor,
      appBar: AppBar(
        title: const Text('Neumorphism Animation'),
        actions: [
          IconButton(
            // onPressed: () => Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const Challenge05(),
            //   ),
            // ),
            onPressed: () => Navigator.of(context).push(
              PageTransition(
                type: PageTransitionType.rotate,
                duration: Duration(seconds: 2),
                reverseDuration: Duration(seconds: 3),
                alignment: Alignment.topCenter,
                child: Challenge05(),
              ),
            ),
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(55.0),
            child: Center(
              child: AnimatedRotation(
                curve: Curves.easeInOutExpo,
                turns: turns,
                duration: const Duration(seconds: 1),
                child: GestureDetector(
                  onTap: () {
                    if (isClicked) {
                      setState(
                        () => turns -= 1 / 4,
                      );
                      _controller.reverse();
                    } else {
                      setState(
                        () => turns += 1 / 4,
                      );
                      _controller.forward();
                    }
                    isClicked = !isClicked;
                  },
                  child: AnimatedContainer(
                    curve: Curves.easeOutExpo,
                    duration: const Duration(seconds: 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: customWhiteColor,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 30.0,
                            offset: isClicked
                                ? const Offset(20, -20)
                                : const Offset(20, 20),
                            color: Colors.grey,
                          ),
                          BoxShadow(
                            blurRadius: 30.0,
                            offset: isClicked
                                ? const Offset(-20, 20)
                                : const Offset(-20, -20),
                            color: Colors.white,
                          ),
                        ]),
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: Center(
                        child: AnimatedIcon(
                          icon: AnimatedIcons.menu_close,
                          progress: _controller,
                          size: 100,
                          color: customBlackColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                            // FIRST BUTTON
                            onTap: _letsPress1,
                            child: buttonPressed1
                                ? ButtonTapped(
                                    icon: icons1,
                                  )
                                : MyButton(
                                    icon: icons1,
                                  )),
                      ),
                      Expanded(
                        child: GestureDetector(
                            // SECOND BUTTON
                            onTap: _letsPress2,
                            child: buttonPressed2
                                ? ButtonTapped(
                                    icon: icons2,
                                  )
                                : MyButton(
                                    icon: icons2,
                                  )),
                      ),
                      Expanded(
                        child: GestureDetector(
                            // THIRD BUTTON
                            onTap: _letsPress3,
                            child: buttonPressed3
                                ? ButtonTapped(
                                    icon: icons3,
                                  )
                                : MyButton(
                                    icon: icons3,
                                  )),
                      ),
                      Expanded(
                        child: GestureDetector(
                            // FOURTH BUTTON
                            onTap: _letsPress4,
                            child: buttonPressed4
                                ? ButtonTapped(
                                    icon: icons4,
                                  )
                                : MyButton(
                                    icon: icons4,
                                  )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  var icon;
  MyButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Icon(
          icon,
          size: 37,
          color: Colors.grey[800],
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: const [
              BoxShadow(
                  //color: Colors.grey[600],
                  color: Colors.grey,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  // Colors.grey[200],
                  // Colors.grey[300],
                  // Colors.grey[400],
                  // Colors.grey[500],
                  Colors.grey,
                  Colors.grey,
                  Colors.grey,
                  Colors.grey,
                ],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  1
                ])),
      ),
    );
  }
}

//

class ButtonTapped extends StatelessWidget {
  var icon;
  ButtonTapped({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Icon(
            icon,
            size: 35,
            color: Colors.grey[700],
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    //color: Colors.grey[600],
                    color: Colors.grey,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ],
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    // Colors.grey[700],
                    // Colors.grey[600],
                    // Colors.grey[500],
                    // Colors.grey[200],
                    Colors.grey,
                    Colors.grey,
                    Colors.grey,
                    Colors.grey,
                  ],
                  stops: [
                    0,
                    0.1,
                    0.3,
                    1
                  ])),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  //color: Colors.grey[600],
                  color: Colors.grey,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  // Colors.grey[200],
                  // Colors.grey[300],
                  // Colors.grey[400],
                  // Colors.grey[500],
                  Colors.grey,
                  Colors.grey,
                  Colors.grey,
                  Colors.grey,
                ],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  1
                ])),
      ),
    );
  }
}
