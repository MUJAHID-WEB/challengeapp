import 'package:challenge/challenge07.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Challenge06 extends StatefulWidget {
  const Challenge06({super.key});

  @override
  State<Challenge06> createState() => _Challenge06State();
}

class _Challenge06State extends State<Challenge06> {
  //  Route _createRoute() {
  //   return PageRouteBuilder(
  //    pageBuilder: (context, animation, secondaryAnimation) =>
  //         const Challenge02(),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       const begin = Offset(1.0, 0.0);
  //       const end = Offset.zero;
  //       const curve = Curves.linear;

  //       var tween =
  //           Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  //       return SlideTransition(
  //         position: animation.drive(tween),
  //         child: child,
  //       );
  //     },
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Last Page'),
        actions: [
          IconButton(
            // onPressed: () => Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const Challenge06(),
            //   ),
            // ),
            //
            // onPressed: () {
            //   Navigator.of(context).push(_createRoute());
            // },
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Sign In Page'),
          onPressed: () {
            Get.to(() => const SignNeu(),
                transition: Transition.circularReveal,
                duration: const Duration(seconds: 2));
          },
        ),
      ),
    );
  }
}
