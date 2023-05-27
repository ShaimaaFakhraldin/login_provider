import 'package:flutter/material.dart';
import 'package:login_provider/sign_provider.dart';
import 'package:provider/provider.dart';

class LoginRoute extends StatelessWidget {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  final userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userField = TextField(
      style: style,
      controller: userNameTextController,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "User Name",
          border: OutlineInputBorder(borderRadius: BorderRadius.horizontal())),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.horizontal())),
    );
    final loginButon = Material(
      elevation: 5.0,
      color: Colors.blueAccent[400],
      child: MaterialButton(
        minWidth:100,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          context.read<SignInPovider>().signIn(userNameTextController.text);

          // Navigator.pop(context);
        },
        child: Text("Sign-In",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final setTimeButon = Material(
      elevation: 5.0,
      color: Colors.blueAccent[400],
      child: MaterialButton(
        minWidth: 100,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          context.read<SignInPovider>().setTime();

          // Navigator.pop(context);
        },
        child: Text("SetTime",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 25.0),
                userField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    loginButon ,
                    SizedBox( width: 30,),
                    setTimeButon
                  ],
                )
                ,
                SizedBox(
                  height: 25.0,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("back"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
