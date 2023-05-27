import 'package:flutter/material.dart';

class SignInPovider  extends  ChangeNotifier {
  String _userName = "";
  DateTime? _signInTime ;

  String get userName => _userName ;
  DateTime? get signTime => _signInTime ;

  signIn( String value){
     _userName = value ;
       notifyListeners();
  }
setTime(){
  _signInTime = DateTime.now();
  notifyListeners();
}

}