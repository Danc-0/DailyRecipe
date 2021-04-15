import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      autocorrect: true,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(100.0, 15.0, 100.0, 15.0),
          prefixIcon: new Icon(Icons.person),
          filled: true,
          hintText: "Email",
          hintStyle: TextStyle(color: Colors.grey),
          border: UnderlineInputBorder()),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              UnderlineInputBorder()),
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.deepOrange,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1609670438772-9cf3afc5052b?ixid=MnwxMjA3fDB8MHxwaG90b"
                      "y1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 110.0,
                    child: Text("Daily Recipe",
                        style: TextStyle(
                            fontSize: 60.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 35.0,
                  child: Text(
                    "Register",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ));
  }
}
// RaisedButton(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(18.0),),
// onPressed: () {},
// padding: EdgeInsets.all(10.0),
// color: Colors.deepOrange,
// textColor: Colors.white,
// child: Text("Register Here",
// style: TextStyle(fontSize: 15)),
// ),
