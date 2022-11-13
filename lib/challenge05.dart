// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:challenge/challenge06.dart';
import 'package:flutter/material.dart';

class Challenge05 extends StatefulWidget {
  const Challenge05({super.key});
//final String title;
  @override
  State<Challenge05> createState() => _Challenge05State();
}

class _Challenge05State extends State<Challenge05> {
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Challenge06(),
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

  bool _isBlur = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Glassomorphism'),
        actions: [
          IconButton(
            // onPressed: () => Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const Challenge06(),
            //   ),
            // ),
            onPressed: () {
              Navigator.of(context).push(_createRoute());
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Stack(
          children: [
            Image.network(
              'https://tinyurl.com/2p8zr2ze',
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isBlur = !_isBlur;
                  });
                },
                child: GlassMorphism(
                    blur: _isBlur ? 30 : 0,
                    opacity: 0.7,
                    child: SizedBox(
                      height: 210,
                      width: 320,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GlassMorphism extends StatelessWidget {
  final double blur;
  final double opacity;
  final Widget child;

  const GlassMorphism({
    Key? key,
    required this.blur,
    required this.opacity,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(opacity),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              border:
                  Border.all(width: 1.5, color: Colors.white.withOpacity(0.1))),
          child: child,
        ),
      ),
    );
  }
}
