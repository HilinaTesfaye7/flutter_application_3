import 'package:flutter/material.dart';

import 'package:flutter_application_3/pages/box.dart';
import 'package:flutter_application_3/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final Width =MediaQuery.of(context).size.width;
    return Stack(
      children: [
       Positioned(
          bottom: 0,
          child: Image.network(
          'img/back.jpg',fit:BoxFit.cover,
        height: height,)
        ),
        Positioned(
          bottom: 0,
          child: Container(
          height: height/2.4,
          width: Width,
          
        )
        ),
        foreground()
      ],
    );
  }
}
class foreground extends StatelessWidget {
  const foreground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      drawer:NavBar(),
      backgroundColor: Colors.black54,
       appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.white),
      
     
     ),
    
     body: Padding(padding: EdgeInsets.symmetric(horizontal: 18),
     child: DefaultTextStyle(
      style:GoogleFonts.raleway(color:Colors.white),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: h*0.03,),
          Text('Game Zone',style:TextStyle(fontSize:30,fontWeight:FontWeight.bold)),
          SizedBox(height: h*0.06,),
          Box(),

        ],
       ),
     ),),
    );
  }
}