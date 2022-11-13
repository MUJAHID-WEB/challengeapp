import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';

class Neumorphism extends StatefulWidget {
  const Neumorphism({super.key});

  @override
  State<Neumorphism> createState() => _NeumorphismState();
}

class _NeumorphismState extends State<Neumorphism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neomorphism'),
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Neumorphic(
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: 12,
                  lightSource: LightSource.topLeft,
                  color: Colors.grey,
                  intensity: 0.75,
                  surfaceIntensity: 0.80,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            NeumorphicText(
              "I love flutter",
              style: NeumorphicStyle(
                depth: 12, //customize depth here
                color: Colors.grey, //customize color here
              ),
              textStyle: NeumorphicTextStyle(
                fontSize: 30, //customize size here
                // AND others usual text style properties (fontFamily, fontWeight, ...)
              ),
            ),
            SizedBox(
              height: 25,
            ),
            NeumorphicIcon(
              Icons.add_circle,
              size: 100,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
