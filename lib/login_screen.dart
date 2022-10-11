import 'package:demo_app/logged_in.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('MY APP')),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.greenAccent,
            ),
            Positioned(
              top: size.height * 0.1,
              left: 15,
              right: 15,
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.indigo.withOpacity(.5),
                        blurRadius: 4,
                        spreadRadius: 5,
                        offset: Offset(3, 3),
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.green,
                      ),
                    ),
                    customTextField('Username'),
                    customTextField('Password'),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Loggedin())));
                      },
                      child: Text('Login'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('or'),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'Assets/icons/google.png',
                          height: 50,
                          width: 50,
                        ),
                        Image.asset(
                          'Assets/icons/facebook.png',
                          height: 50,
                          width: 50,
                        ),
                        Image.asset(
                          'Assets/icons/twitter.png',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class customTextField extends StatelessWidget {
  String hint = '';
  customTextField(this.hint) {
    @required
    String hint;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(11),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: this.hint,
        ),
      ),
    );
  }
}
