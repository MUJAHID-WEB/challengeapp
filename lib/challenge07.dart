import 'package:challenge/challenge08.dart';
import 'package:challenge/challenge09.dart';
import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_animated_container.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignNeu extends StatefulWidget {
  const SignNeu({super.key});

  @override
  State<SignNeu> createState() => _SignNeuState();
}

class _SignNeuState extends State<SignNeu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('SignIn'),
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
                child: NeoComp(),
              ),
            ),

            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          BackDesign(),
          LoginCredentials(),
          BottomContainer(),
        ]),
      ),
    );
  }
}

class BackDesign extends StatelessWidget {
  const BackDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          color: Colors.white,
          height: size.height * 0.4,
          child: Stack(
            children: [
              Positioned(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClayContainer(
                      color: Colors.white,
                      width: 220,
                      height: 220,
                      borderRadius: 200,
                      depth: -50,
                      curveType: CurveType.convex,
                    ),
                    ClayContainer(
                      color: Colors.white,
                      width: 180,
                      height: 180,
                      borderRadius: 200,
                      depth: 50,
                    ),
                    ClayContainer(
                      color: Colors.white,
                      width: 140,
                      height: 140,
                      borderRadius: 200,
                      depth: -50,
                      curveType: CurveType.convex,
                    ),
                    // ClayContainer(
                    //   color: Colors.white,
                    //   width: 100,
                    //   height: 100,
                    //   borderRadius: 200,
                    //   depth: 50,
                    // ),
                    ClayAnimatedContainer(
                      color: Colors.white,
                      width: 100,
                      height: 100,
                      borderRadius: 200,
                      depth: 50,
                      //spread: 50,
                      duration: Duration(seconds: 2),
                    )
                  ],
                ),
                right: 0,
                top: -size.height * 0.05,
              )
            ],
          ),
        ),
        Container(
          height: size.height * 0.4,
          child: Stack(
            children: [
              Positioned(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClayContainer(
                      color: Colors.white,
                      width: 160,
                      height: 160,
                      borderRadius: 200,
                      depth: 50,
                      curveType: CurveType.convex,
                    ),
                    ClayContainer(
                      color: Colors.white,
                      width: 140,
                      height: 140,
                      borderRadius: 200,
                      depth: -50,
                      curveType: CurveType.convex,
                    ),
                    ClayContainer(
                      color: Colors.white,
                      width: 70,
                      height: 70,
                      borderRadius: 200,
                      depth: 50,
                    ),
                  ],
                ),
                left: -size.width * 0.05,
                bottom: size.height * 0.1,
              )
            ],
          ),
        ),
        Container(
          height: size.height * 0.4,
          child: Stack(
            children: [
              Positioned(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClayContainer(
                      color: Colors.white,
                      width: 100,
                      height: 100,
                      borderRadius: 200,
                      depth: 50,
                      curveType: CurveType.convex,
                    ),
                    ClayContainer(
                      color: Colors.white,
                      width: 80,
                      height: 80,
                      borderRadius: 200,
                      depth: -50,
                      curveType: CurveType.convex,
                    )
                  ],
                ),
                left: size.width * 0.52,
                bottom: 10,
              )
            ],
          ),
        )
      ],
    );
  }
}

class LoginCredentials extends StatelessWidget {
  const LoginCredentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height * 0.3,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Text(
              'Enter your LogIn details',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.w800,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Container(
                child: ClayContainer(
                  color: Colors.white,
                  borderRadius: 30,
                  depth: -30,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          border: InputBorder.none,
                          fillColor: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: ClayContainer(
                color: Colors.white,
                borderRadius: 30,
                depth: -30,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                        fillColor: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0 / 2),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: ClayContainer(
        color: Colors.white,
        height: size.height * 0.3,
        depth: 60,
        spread: 20,
        customBorderRadius: const BorderRadius.only(
          topRight: Radius.elliptical(350, 250),
          topLeft: Radius.elliptical(350, 250),
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.07,
            ),
            ClayContainer(
              color: Colors.white,
              depth: 20,
              borderRadius: 30,
              curveType: CurveType.convex,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 30.0 / 2, horizontal: 30.0 * 2),

                child: const Text(
                  'LogIn',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),
                ),
                // onPressed: () => Navigator.of(context).push(
                //   PageTransition(
                //     type: PageTransitionType.rightToLeftJoined,
                //     // childCurrent: Widget,
                //     duration: Duration(seconds: 2),
                //     reverseDuration: Duration(seconds: 2),
                //     child: Challenge08(),
                //   ),
                // ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                'SignUp',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                    decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
