import 'package:challenge/challenge02_01.dart';
import 'package:flutter/material.dart';

class Challenge02 extends StatefulWidget {
  const Challenge02({super.key});

  @override
  State<Challenge02> createState() => _Challenge02State();
}

class _Challenge02State extends State<Challenge02> {
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Challenge02_01(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 1.0);
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
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Challenge02',
        ),
        actions: [
          IconButton(
            // onPressed: () => Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const Challenge02_01(),
            //   ),
            // ),
            onPressed: () {
              Navigator.of(context).push(_createRoute());
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(0, 196, 192, 1),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 200,
                  color: Colors.amber,
                ),
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.blue,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 35,
            ),
            Container(
              height: 20,
              width: 350,
              color: Colors.orange,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 400,
                    width: 300,
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            width: 300,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 22,
                          ),
                          Container(
                            height: 20,
                            width: 300,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 22,
                          ),
                          Container(
                            height: 150,
                            width: 300,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 22,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 200,
                                color: Colors.yellow,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.orange,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 400,
                    width: 300,
                    color: Colors.blueGrey,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            width: 300,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 22,
                          ),
                          Container(
                            height: 20,
                            width: 300,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 22,
                          ),
                          Container(
                            height: 150,
                            width: 300,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 22,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 200,
                                color: Colors.yellow,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.orange,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Center(
                child: FloatingActionButton(
              backgroundColor: Colors.white,
              elevation: 10,
              onPressed: () {},
              child: const Icon(
                Icons.add,
                size: 40,
                color: Colors.blue,
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
