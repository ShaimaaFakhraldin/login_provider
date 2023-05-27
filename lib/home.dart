import 'package:flutter/material.dart';
import 'package:login_provider/login.dart';
import 'package:provider/provider.dart';

import 'sign_provider.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    print("builderrrrrrrrr");
    return Scaffold(
        appBar: AppBar(
            title: const Text('Provider Login Example'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginRoute()),
                  );
                },
              ),
            ]),
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("from cash ") ,
              SizedBox(height: 30,),

              Selector<SignInPovider ,DateTime >(
                  builder: (BuildContext context, dataTime, child) {
                     print("selector -- >dataTime ");
                 return    Text(dataTime == null ?"time login " : "${dataTime}" ,style: TextStyle(fontSize: 30),);;
              }, selector: (BuildContext con , value) {
                return value.signTime!;

              }),
              SizedBox(height: 30,),
              Consumer<SignInPovider>(
                builder: (BuildContext context, value, child) {
                  print("Consumer time login");
                  return
                      Text(value.signTime == null ?"time login " : "${value.signTime}" ,style: TextStyle(fontSize: 30),);

                },
              ),
              SizedBox(height: 30,),

              Consumer<SignInPovider>(
                builder: (BuildContext context, value, child) {
                  print("Consumer  user name ");

                  return

                      Text(value.userName ==""?"Please login" : "${value.userName}" ,style: TextStyle(fontSize: 30),
                      );
                },
              ),
            ]
          ),
        ));
  }
}
