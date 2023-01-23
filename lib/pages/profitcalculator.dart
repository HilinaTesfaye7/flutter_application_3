import 'package:flutter/material.dart';

import 'package:flutter_application_3/users/fragments/home.dart';
import 'package:flutter_application_3/models/colors.dart';
import 'package:flutter_application_3/pages/frost.dart';
import 'package:google_fonts/google_fonts.dart';


 class Profito extends StatefulWidget {
   const Profito({super.key});
 
   @override
   State<Profito> createState() => _ProfitoState();
 }
 
 class _ProfitoState extends State<Profito> {
  TextEditingController controller1=TextEditingController();
 TextEditingController controller2=TextEditingController();
  int? result=0,num1=0,num2=0;
    sub(){
    setState((){
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      result != num1!-num2!;
    });
    }
   @override
   Widget build(BuildContext context) {
   double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
     return Scaffold(
       backgroundColor: Colors.black,
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
     
     body:Padding(padding:EdgeInsets.symmetric(horizontal:18),
     child:DefaultTextStyle(
      style: GoogleFonts.raleway(color:Colors.white),
      child:Column(
       children:[
          SizedBox(height:h*0.05),
           Text("Profit Calculator",style:TextStyle(fontSize: h*0.05),
            ),
            SizedBox(height:h*0.03),
          Row(children: [
            
            Container(
          height: h*0.07,
          width:w*0.3,
          margin: EdgeInsets.only(left: h*0.05),
           child: TextField(
            style: TextStyle(
              fontSize: h*0.02,
              color: Colors.white,),
              decoration:InputDecoration(
               
                hintText: "Income ",
                hintStyle: TextStyle(color: Colors.grey[400],fontSize: h*0.025),
                filled: true,
                fillColor: Color(0xff161d27).withOpacity(0.9),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colors)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colors)),
              )
            
           ),
         ),
            SizedBox(width:w*0.02),
             Container(
          height: h*0.07,
          width:w*0.3,
          margin: EdgeInsets.only(left: h*0.05),
           child: TextField(
            style: TextStyle(
              fontSize: h*0.02,
              color: Colors.white,),
              decoration:InputDecoration(
               
                labelText: "Expense ",
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
          ],),
         SizedBox(height:h*0.05),
              GestureDetector(
               onTap:(){
                    sub();
                           controller1.clear();
                           controller2.clear();
                  },
                child: Container(  
                child: Text('Calculate')),
              ),
             SizedBox(height:h*0.05),
          Text("Result:$result",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color: Colors.amber))
            
            
       ],
      )
     )
     ),
     );
   
   }
  }
 