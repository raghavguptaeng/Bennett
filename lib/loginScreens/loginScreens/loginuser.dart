import 'package:bennett/loginScreens/loginScreens/loginpass.dart';
import 'package:flutter/material.dart';
import 'package:bennett/colors.dart';
import 'package:bennett/constants.dart';

class loginuser extends StatefulWidget {
  @override
  _LoginuserState createState()=> _LoginuserState();
  }
  
class _LoginuserState extends State<loginuser>
{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:background,
      body: Stack(
        children: [
          Positioned(
           top: 0,
           right: 0,
           left: 0,
           child: Container(
             height: 400,
             decoration: BoxDecoration(
              color: white
             ),
             child: Container(
               padding: EdgeInsets.only(top: 100,left: 30),
               color: nearlyDarkBlue,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   RichText(text: TextSpan(
                     text: 'Login',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: white,
                      letterSpacing: 2),
                   ))
                ],
              ),
             ),
           ),
          ),
          Positioned(
            top: 200,
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width-40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: container_odd_circularDecor,
              child: Container(
                padding: EdgeInsets.only(top: 200,left: 25,right: 25),
                child: Column(
                  children: [
                   buildtextfield(Icons.email_outlined,"Username",false,false),
                    buildtextfield(Icons.email_outlined,"Role",false,false),   
                  ],
                ),
              ),
            )
            ),
           
            roundsubmit()
          
           ],
      ),
    );
  }

  Positioned roundsubmit() {
    return Positioned(
            right: 0,
            left: 0,
            top: 560,
            child: Center(
              child: Container(
                height: 90,
                width: 90,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius:BorderRadius .circular(50)
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                       colors: [darkText,nearlyBlue,lightText,grey],
                       begin: Alignment.topLeft,
                       end: Alignment.bottomRight),
                       borderRadius: BorderRadius.circular(30) ,
                       boxShadow: [
                        BoxShadow(
                          color: nearlyBlack.withOpacity(.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0,1)
                        )]
                       ),
                       child: IconButton(icon: Icon(Icons.arrow_forward),color: white,onPressed:(){
                         Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>loginpass()
                          ));
                          } ,
                          ),
                ),

              ),
            ),);
  }
  Widget buildtextfield(IconData icon,String hinttext,bool ispass,bool isemail) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: TextField(
      obscureText: ispass,
      keyboardType: isemail ? TextInputType.emailAddress: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(icon),
                      enabledBorder: OutlineInputBorder(
                        borderSide:BorderSide(color: nearlyBlack),
                        borderRadius:  BorderRadius.all(Radius.circular(35)),
                      ),
                      hintText: hinttext,
                      hintStyle: kSmallTextStyle
                    ),
                  )) ;
    
  }
}
  