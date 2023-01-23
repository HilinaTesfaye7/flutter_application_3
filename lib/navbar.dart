import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/alert.dart';
import 'package:flutter_application_3/pages/edit.dart';
import 'package:flutter_application_3/pages/income.dart';

import 'package:flutter_application_3/pages/profit.dart';
import 'package:flutter_application_3/pages/profitcalculator.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Eric',style: TextStyle(color: Colors.cyanAccent,fontWeight: FontWeight.bold),),
           accountEmail: Text('EricCartman@gmail.com',style: TextStyle(color:Colors.cyanAccent,fontWeight: FontWeight.bold),),
           currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset('img/ye.jpg',width: 90,height: 90,fit: BoxFit.cover,),
            ),
           ),
           decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://cdn2.vectorstock.com/i/1000x1000/99/51/game-zone-neon-sign-bright-signboard-light-vector-27459951.jpg'),
              fit:BoxFit.cover)
           ),
           ),

           ListTile(
            leading: Icon(Icons.people,color: Colors.amber,),
            title: Text('profile',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){return Edit ();
                    },
                    ));
            },
           ),
            
           ListTile(
            leading: Icon(Icons.calculate,color: Colors.amber,),
            title: Text('Profit calculator',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),
            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context){return Profito();
                    },
                    ));
            },
            
           ),
         
        ],
      ),
 
    );
  }
}