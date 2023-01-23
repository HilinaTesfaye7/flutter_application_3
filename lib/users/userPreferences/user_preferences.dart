import 'dart:convert';

import 'package:flutter_application_3/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RemberUserPrefs
{
  //save user info
  static Future<void> saveRemberUser(User userInfo)async 
  {
    SharedPreferences preferences =await SharedPreferences.getInstance();
    String userJsonData = jsonEncode(userInfo.toJson());
    await preferences.setString("currentUser", userJsonData);
  }
}