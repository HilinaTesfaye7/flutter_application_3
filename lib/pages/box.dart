import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/pages/alert.dart';
import 'package:flutter_application_3/users/fragments/home.dart';
import 'package:flutter_application_3/pages/expense.dart';
import 'package:flutter_application_3/pages/income.dart';

import 'package:flutter_application_3/pages/profit.dart';



class Box extends StatelessWidget {
  const Box({super.key});

  @override
  Widget build(BuildContext context) {
     double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                     Navigator.push(
                     context,
                   MaterialPageRoute(builder: (context) => const Income()),
                        );
                        },
              child: Container(
                height: h*0.3,
                width:w*0.43,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(15),
                 image: DecorationImage(image: AssetImage('img/vrgirl.jpg'),fit:BoxFit.cover)
                ),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: h*0.2,left: w*0.04)),
                    Text('Income',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white)),
                  ],
                ),
              ),
            ),
            SizedBox(width: w*0.04,),
              GestureDetector(
                  onTap: () {
                     Navigator.push(
                     context,
                   MaterialPageRoute(builder: (context) => const Expense()),
                        );
                        },
                child: Container(
                height: h*0.3,
                width:w*0.43,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(15),
                 image: DecorationImage(image: AssetImage('img/Dstvtv.jpg'),fit:BoxFit.cover)
                ),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: h*0.2,left: w*0.04)),
                    Text('Expense',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white)),
                  ],
                ),
                          ),
              ),
          ],
        ),
       SizedBox(height: h*0.03,),
        Row(
          children: [
              GestureDetector(
                  onTap: () {
                     Navigator.push(
                     context,
                   MaterialPageRoute(builder: (context) => const Profit()),
                        );
                        },
                child: Container(
               height: h*0.3,
                width:w*0.43,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(15),
                 image: DecorationImage(image: AssetImage('img/bettingfoot.jpg'),fit:BoxFit.cover)
                ),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: h*0.2,left: w*0.04)),
                    Text('Profit',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white)),
                  ],
                ),
                          ),
              ),
             SizedBox(width: w*0.04),
              GestureDetector(
                  onTap: () {
                     Navigator.push(
                     context,
                   MaterialPageRoute(builder: (context) => const Alert()),
                        );
                        },
                child: Container(
                height: h*0.3,
                width:w*0.43,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(15), 
                 image: DecorationImage(image: AssetImage('img/alert.jpg'),fit:BoxFit.cover)
                ),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: h*0.2,left: w*0.04)),
                    Text('Alert',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white)),
                  ],
                ),
                          ),
              ),
          ],
 
        )
      ],
    );
  } 
}