import 'package:bennett/HomeScreens/profile.dart';
import 'package:flutter/material.dart';
import 'package:bennett/colors.dart';
import 'package:bennett/constants.dart';

class loginpass extends StatefulWidget {
  @override
  _LoginpassState createState()=> _LoginpassState();
  
  }
  
class _LoginpassState extends State<loginpass>
{
  bool isremember = false;
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
             height: 350,
             decoration: BoxDecoration(
              color: white
             ),
             child: Container(
               padding: EdgeInsets.only(top: 100,left: 30),
               color: lightText,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   RichText(text: TextSpan(
                     text: 'Login ',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: white,
                      letterSpacing: 2),
                   )),
                   RichText(text: TextSpan(
                     text: 'Password',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: white,
                      letterSpacing: 2),
                   )), 
                ],
              ),
             ),
           ),
          ),
          Positioned(
            top: 200,
            child: Container(
              height: 350,
              width: MediaQuery.of(context).size.width-40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: container_odd_circularDecor,
              child: Container(
                padding: EdgeInsets.only(top: 180,left: 25,right: 25),
                child: Column(
                  children: [
                   buildtextfield(Icons.email_outlined,"Password",true,false),
                  ],
                ),
              ),
            )
            ),
            // Padding(
            //   padding:EdgeInsets.all(16) ,
            //   child:Row(
            //   mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            //   children: [
            //     Row(
            //       children: [
            //         Checkbox(value: isremember, 
            //         activeColor: darkerText,
            //         onChanged: (value){
            //           setState(() {
            //             isremember =!isremember;
            //           });
            //         }),
            //         Text("Remember Me",style: kSmallTextStyle,)
            //       ],
            //     ),
            //     TextButton(onPressed:(){}, child: Text("Forgot Password",style: kSmallTextStyle,))
            //   ],
            // ),

            // ),
           
            roundsubmit()
           ],
      ),
    );
  }

  Positioned roundsubmit() {
    return Positioned(
            right: 0,
            left: 0,
            top: 500,
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
                MaterialPageRoute(builder: (context)=>Profile()
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