// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_application_3/models/colors.dart';
import 'package:flutter_application_3/pages/frost.dart';
import 'package:flutter_application_3/users/fragments/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_3/frostedglass.dart';


class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
     double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Stack(
      
      children: [
        Positioned(
          bottom: height,
          child: Image.asset(
          'img/back.jpg',
        height: height,)
        ),
        urgent(),
        ],
    );
  }
}
class urgent extends StatelessWidget {
  const urgent({super.key});

  @override
  Widget build(BuildContext context) {
     double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
     var inputBorder = OutlineInputBorder(
                borderSide:BorderSide(color: Colors.white), 
                borderRadius: BorderRadius.all(Radius.circular(30)),
                );
    return Scaffold(
       
        backgroundColor:Color.fromARGB(255, 78, 13, 13),
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
    
     body: Padding(padding:EdgeInsets.symmetric(horizontal:18),
     child: DefaultTextStyle(
      style: GoogleFonts.raleway(color:Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
           SizedBox(height:h*0.05),
          
            Text("Alert",style:TextStyle(fontSize: h*0.05),
            ),
          SizedBox(height:h*0.03),
           Container(
          height: h*0.4,
          width:w*0.7,
          margin: EdgeInsets.only(left: h*0.05),
           child: TextField(
             maxLines: 10,
             textCapitalization: TextCapitalization.sentences,
             textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: h*0.02,
              color: Colors.white,),
              decoration:InputDecoration(
               
                   labelText: "Urgent problem ...",
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
         
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Container(
                     height: h*0.07,
                   width:w*0.7,
                  
                     child: const Frost(
                      theWidth: 30,
                       theHeight: 100,
                        theChild:Text('Submit',style:TextStyle(color:Colors.white))),
                  ),
              ),
            ],
          ),
        ],
      ),
     ),),
        );
  }
}
