import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/frostedglass.dart';
import 'package:flutter_application_3/models/colors.dart';
import 'package:flutter_application_3/models/user.dart';
import 'package:flutter_application_3/users/fragments/home.dart';
import 'package:flutter_application_3/users/userPreferences/user_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart'as  http;
import 'package:get/get.dart';

import '../api_connection/api.connection.dart';

class Fantacy extends StatefulWidget {
  const Fantacy({super.key});

  @override
  State<Fantacy> createState() => _FantacyState();
}

class _FantacyState extends State<Fantacy> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

loginUserNow() async
{
  try{
 var res=await http.post(
    Uri.parse(API.login),
    body: {
        "user_email":emailController.text.trim(),
        "user_password":emailController.text.trim(),
    }
   );
   if(res.statusCode == 200)
   {
    var resBodyOfLogin=jsonDecode(res.body);
    if(resBodyOfLogin['success'] == true)
    {
      Fluttertoast.showToast(msg: "login successfully");

     User userInfo = User.fromJson(resBodyOfLogin["userData"]);

     await RemberUserPrefs.saveRemberUser(userInfo);

     Future.delayed(Duration(milliseconds: 2000),()
     {
      Get.to(Home());
     });
    }
    else
    {
      Fluttertoast.showToast(msg: "error");
    }
   }
  }
  catch(errorMsg)
  {
    print("error :: " + errorMsg.toString());
  }
 }

 
  @override
  Widget build(BuildContext context) {
     double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black45,
    body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://t3.ftcdn.net/jpg/04/28/57/70/360_F_428577096_8c3NWVh5xiHR9h9KazrH4PTt1L1u4Wh2.jpg'),fit: BoxFit.cover)
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(bottom:0),
              
            
          decoration: BoxDecoration(
            gradient:LinearGradient(
              colors:[
                Colors.transparent,
                Colors.transparent,
                (Color(0xff161d27)).withOpacity(0.9),
                (Color(0xff161d27)).withOpacity(0.9),
            
                
              ],begin:Alignment.topCenter,end:Alignment.bottomCenter
            )
          ),
          child:Column(
            children:[
                     Text("Welcome",
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.bold),),
            
          
        
         SizedBox(height: h*0.02,),
         Text('sign in',style: TextStyle(color: Colors.grey.shade500,fontSize: 16),
         ),
         SizedBox(height: h*0.02,),
         Container(
          height: h*0.07,
          
          margin: EdgeInsets.only(left: 40,right: 40),
           child: TextField(
           controller:emailController,
           
            style: TextStyle(
              fontSize: h*0.025,
              color: Colors.white,),
              decoration:InputDecoration(
                hintText: "email",
                hintStyle: TextStyle(color: Colors.grey.shade700),
                filled: true,
                fillColor: Color(0xff161d27).withOpacity(0.9),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colors)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colors)),
              )
            
           ),
         ),
         SizedBox(height: h*0.02,),
         Container(
          height: h*0.07,
          margin: EdgeInsets.only(left: 40,right: 40),
           child: TextField(
            controller:passwordController,
    
            style: TextStyle(
              fontSize: h*0.025,
              color: Colors.white,),
              decoration:InputDecoration(
                hintText: "password",
                hintStyle: TextStyle(color: Colors.grey.shade700),
                filled: true,
                fillColor: Color(0xff161d27).withOpacity(0.9),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colors)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colors)),
              )
            
           ),
         ),
         SizedBox(height: h*0.01,),
        
         
          Text('forgot password?',style: TextStyle(
            color: colors,
            fontSize:h*0.025,
            fontWeight: FontWeight.bold),),
         
         SizedBox(height: h*0.025,),
        GestureDetector(
          onTap: () {
            
            if(formKey.currentState!.validate())
            {
              loginUserNow();
            }
           
          },
          child: Container( 
                    height: h*0.07,
                   width:w*0.7,
                    child: const FrostedGlass(
                      theWidth: 200,
                       theHeight: 50,
                        theChild:Text('Sign In')),
                  ),
        ),
                SizedBox(height: h*0.07,),
            ]
          )
        ),
        
          
            
            
          ],
        )
      ],
    ),
    );
  }
}