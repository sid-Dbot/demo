import 'package:flutter/material.dart';

class Loggedin extends StatefulWidget {
  @override
  State<Loggedin> createState() => _LoggedinState();
}

class _LoggedinState extends State<Loggedin> {
  bool click = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Profile'),
      ),
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: size.height * 0.4,
              width: size.width,
              color: Colors.green,
              child: AnimatedAlign(
                alignment: click ? Alignment.topLeft : Alignment.topRight,
                duration: Duration(seconds: 2),
                child: Text(
                  'Your logged in!',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        Positioned(
            top: size.height * 0.15,
            left: size.width * 0.15,
            child: Container(
              height: 25,
              width: 25,
              color: Colors.tealAccent,
            )),
        Center(
            child: GestureDetector(
          onTap: () {
            setState(() {
              click = !click;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            color: click ? Colors.pinkAccent : Colors.lightBlue,
            height: click ? 150 : 75,
            width: click ? 75 : 150,
          ),
        ))
      ]),
    );
  }
}
