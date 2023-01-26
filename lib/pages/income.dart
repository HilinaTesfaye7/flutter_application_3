import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter_application_3/frostedglass.dart';
import 'package:flutter_application_3/users/fragments/home.dart';
import 'package:flutter_application_3/models/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart'as http;

import '../api_connection/api.connection.dart';

class Income extends StatefulWidget {
  const Income({super.key});

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
     var formkey = GlobalKey<FormState>();
   
  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
     
    return Stack(
       children: [
        Positioned(
          bottom: 0,
          child: Image.network('img/back.jpg',fit:BoxFit.cover,
        height: height,
        )
        ), 
       Foreground()
      ],
    );
  }
}
class Foreground extends StatefulWidget {
  const Foreground({
    Key? key,
  }) : super(key: key);

  @override
  State<Foreground> createState() => _ForegroundState();
}

class _ForegroundState extends State<Foreground> {
  TextEditingController vr=TextEditingController();
  TextEditingController ps=TextEditingController();
  TextEditingController dstv=TextEditingController();
  TextEditingController betting=TextEditingController();
  TextEditingController pool=TextEditingController();
  TextEditingController coftea=TextEditingController();
  TextEditingController other=TextEditingController();

  Future<void> insertrecord()async{


  if(vr.text !="" && ps.text!="" && dstv.text!="" && betting.text!="" && pool.text!="" && coftea.text!=""&& other.text!=""){
    try{
      String uri="http://127.0.0.1:8080/aid/insert_record.php";
      var res=await http.post(Uri.parse(uri),body:{
        "virtual reality":vr.text,
        "play station":ps.text,
        "dstv":dstv.text,
        "betting":betting.text,
        "pool":pool.text,
        "coffee and tea":coftea.text,
        "other":other.text,
      });
     

      var response=jsonDecode(res.body);
     
      if(response["sucess"]=="true")
      {
        print("record Inserted");
      }else{
        print ("some issue");
      }
    }catch(e){
      print(e);
    }
  } else {
   print("please fill all fields");
  }
}
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
    
     body:Padding(padding:EdgeInsets.symmetric(horizontal:18),
     child:DefaultTextStyle(
      style: GoogleFonts.raleway(color:Colors.white),
       child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          SizedBox(height:h*0.04),
            Text("Income",style:TextStyle(fontSize: h*0.05),
            ),
          SizedBox(height:h*0.03),
           Container(
          height: h*0.07,
          width:w*0.6,
          margin: EdgeInsets.only(left: h*0.05),
           child: TextField(
         controller:vr,
            style: TextStyle(
              fontSize: h*0.02,
              color: Colors.white,),
              decoration:InputDecoration(
                labelText: "Virtual Reality",
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
            controller: ps,
            style: TextStyle(
              fontSize: h*0.02,
              color: Colors.white,),
              decoration:InputDecoration(
                labelText: "Play Station",
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
            controller: dstv,
            style: TextStyle(
              fontSize: h*0.02,
              color: Colors.white,),
              decoration:InputDecoration(
                labelText: "DSTV",
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
           controller: betting,
            style: TextStyle(
              fontSize: h*0.02,
              color: Colors.white,),
              decoration:InputDecoration(
               labelText: "Betting",
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
            controller: pool,
            style: TextStyle(
              fontSize: h*0.02,
              color: Colors.white,),
              decoration:InputDecoration(
               labelText: "Pool",
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
           controller: coftea,
            style: TextStyle(
              fontSize: h*0.02,
              color: Colors.white,),
              decoration:InputDecoration(
                labelText: "coffee & Tea",
                labelStyle: TextStyle(color: Colors.grey[400],fontSize: h*0.025,),
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
            controller: other,
            style: TextStyle(
              fontSize: h*0.02,
              color: Colors.white,),
              decoration:InputDecoration(
               
                labelText: "other",
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
          GestureDetector(
             onTap: () {
            insertrecord();
          },
           child: Container(
               padding: EdgeInsets.only(left: h*0.05),
              height: h*0.07,
          width:w*0.7,
              child: const FrostedGlass(
                theWidth: 200,
                 theHeight: 50,
                  theChild:Text('Submit')),
            ),
          ),
          
        ],
       ),
     ))
    );
  }
}
