import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/models/colors.dart';
import '../users/fragments/home.dart';
import 'package:flutter_application_3/frostedglass.dart';

class Edit extends StatelessWidget {
  const Edit({super.key});

  @override
  Widget build(BuildContext context) {
      final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Image.asset('img/back.jpg',fit:BoxFit.cover,
        height: height,
        )
        ), 
       Editer()
      ],
    );
  }
}
class Editer extends StatelessWidget {
  const Editer({super.key});

  @override
  Widget build(BuildContext context) {
      double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    var inputBorder = OutlineInputBorder(
                borderSide:BorderSide(color: Colors.white), 
                borderRadius: BorderRadius.all(Radius.circular(30)),
                );
    return Scaffold(
       backgroundColor: Colors.black54,
     appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.white),
      leading: IconButton(onPressed: (){
         Navigator.push(
                     context,
                   MaterialPageRoute(builder: (context) => const Home()),
                        );
      }, 
      icon:Icon(Icons.arrow_back))
     ),
      body: Container(
        padding: EdgeInsets.only(top:50),
         child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top:80,),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color:Colors.black45,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )
              ),
              child: Column(
                children:<Widget> [
                SizedBox(
                  height: 80.0,),
                  Container(
                    padding: EdgeInsets.only(top:80,left: 20,right: 20),
                    child: Column(children: <Widget>[
                         Container(
              
          height: h*0.07,
          width:w*0.6,
         margin: EdgeInsets.only(left: h*0.05),
           child: TextField(
            style: TextStyle(
              fontSize: h*0.02,
              color: Colors.white,),
              decoration:InputDecoration(
                labelText: "user name",
                labelStyle: TextStyle(color: Colors.grey[400],fontSize: h*0.025),
                filled: true,
                fillColor: Color(0xff161d27).withOpacity(0.9),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colors)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colors)),
              )
            
           ),
         ),
                         SizedBox(height:h*0.03),
                           Container(
              
          height: h*0.07,
          width:w*0.6,
         margin: EdgeInsets.only(left: h*0.05),
           child: TextField(
            style: TextStyle(
              fontSize: h*0.02,
              color: Colors.white,),
              decoration:InputDecoration(
                labelText: "email",
                labelStyle: TextStyle(color: Colors.grey[400],fontSize: h*0.025),
                filled: true,
                fillColor: Color(0xff161d27).withOpacity(0.9),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colors)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colors)),
              )
            
           ),
         ),
                         SizedBox(height:h*0.03),
                           Container(
              
          height: h*0.07,
          width:w*0.6,
         margin: EdgeInsets.only(left: h*0.05),
           child: TextField(
            style: TextStyle(
              fontSize: h*0.02,
              color: Colors.white,),
              decoration:InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.grey[400],fontSize: h*0.025),
                filled: true,
                fillColor: Color(0xff161d27).withOpacity(0.9),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colors)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colors)),
              )
            
           ),
         ),
                         SizedBox(height:h*0.03),
                        
                        
                          Container(
               padding: EdgeInsets.only(left: h*0.05),
              height: h*0.07,
          width:w*0.7,
              child: const FrostedGlass(
                theWidth: 200,
                 theHeight: 50,
                  theChild:Text('Submit')),
            ),
                    ],
                    ),
                  )
              ],),
            ),
            Align(
            alignment: Alignment.topCenter,
             child: Stack(children: <Widget>[
                  ClipOval(
                    child: Image.asset('img/vrgirl.jpg',width:150,height:150,fit:BoxFit.cover)
                    ),
                    Positioned(
                      bottom:5,
                      right:15,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color:Colors.blueGrey,shape:BoxShape.circle, 
                        ),
                        child: Icon(Icons.edit,size:30),
                      ),
                    )
             ],),
           ),
          ],
         ),
       ),
    ); 
  }
   OutlineInputBorder myInputBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide:BorderSide(
        color: Color(0xff16282),
        width:3,
      )
    );
  }
   OutlineInputBorder myFocusBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide:BorderSide(
        color: Color(0xfffcbf49),
        width:3,
      )
    );
}
}