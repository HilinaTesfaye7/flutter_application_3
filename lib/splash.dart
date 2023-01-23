import 'package:flutter/material.dart';
import 'package:flutter_application_3/frostedglass.dart';
import 'package:flutter_application_3/users/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height:h*0.8,
            width:w*0.99,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/splash.jpg"),fit:BoxFit.cover)
            ),
          ),
          SizedBox(height:h*0.02),
           Center(
            child: GestureDetector(
              onTap: () {
                     Navigator.push(
                     context,
                   MaterialPageRoute(builder: (context) => const Fantacy()),
                        );
                        },
              child: Container(
                height:h*0.08,
                width:w*0.6,
                child: const FrostedGlass(
                  theWidth: 200,
                   theHeight: 50,
                    theChild:Text('Get Started',style:TextStyle(fontSize:30,color:Colors.amber))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}