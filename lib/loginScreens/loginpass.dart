import 'package:bennett/HomeScreens/profile.dart';
import 'package:email_validator/email_validator.dart';
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
  bool _isvisible = false;
  final formKey = GlobalKey<FormState>();
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
               color: nearlyBlue,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   RichText(text: 
                   TextSpan(
                     text: 'Welcome to ',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: white,
                      letterSpacing: 2),
                   )),
                   Text("Login to continue",
                   style:  TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: white,
                      letterSpacing: 2),)
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
              child:Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 135),
                        child: Column(
                        children: [
                            Text('LOGIN ',style:
                            TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: nearlyBlack),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              height: 2,
                              width: 80,
                              color: nearlyDarkBlue,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
               Form(
                 key: formKey,
                 child: Container(
                  padding: EdgeInsets.only(top: 80,left: 25,right: 25),
                  child: Column(
                    children: [
  //                     Padding(
  //     padding: EdgeInsets.only(bottom: 15),
  //     child: TextFormField(
  //        validator: (email)=>email!=null &&!EmailValidator.validate(email) ? "Enter a valid email":null,
  //     autofillHints: [AutofillHints.email],
     
  //     decoration: InputDecoration(
  //         prefixIcon: Icon(Icons.email_outlined,),
  //         enabledBorder: OutlineInputBorder(
  //         borderSide:BorderSide(color: nearlyBlack),
  //         borderRadius:  BorderRadius.all(Radius.circular(35)),
  //         ),
  //         hintText: "Username",
  //        hintStyle: kSmallTextStyle,
  //       ),
       
  //   )
  // ),
   Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: TextFormField(
        validator: (password)=>password!=null&& password.length<8 ? "Enter min 8 characters" :null,
        obscureText:!_isvisible ,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock,),
          suffixIcon: IconButton(onPressed: (){
            setState(() {
              _isvisible = !_isvisible;
            });
          }, 
          icon: _isvisible?Icon(Icons.visibility): Icon(Icons.visibility_off)
          ),
          enabledBorder: OutlineInputBorder(
          borderSide:BorderSide(color: nearlyBlack),
          borderRadius:  BorderRadius.all(Radius.circular(35)),
          ),
          hintText: "Passowrd",
         hintStyle: kSmallTextStyle,
        ),
       
    )
  ),
  Row(
       mainAxisAlignment:MainAxisAlignment.spaceBetween ,
      children: [
        Row(
            children: [
              Checkbox(value: isremember, 
              activeColor: darkerText,
                onChanged: (value){
                  setState(() {
                    isremember =!isremember;
                    });
                  }),
                Text("Remember Me",style: kSmallTextStyle,)
              ],
            ),
          TextButton(onPressed:(){}, child: Text("Forgot Password",style: kSmallTextStyle,))
        ],
      ),
               
                    ],
                  ),
                             
                ),
               ),
            ],
          ),
        ),
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
            top: 550,
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
                         final form = formKey.currentState!;
                         if(form.validate()){
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>Profile()
                          ));
                         }
                       } ,
                    ),
                ),

              ),
            ),);
  }
  Widget buildtextfield(IconData icon,String hinttext,bool ispass,bool isemail) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: TextFormField(
         validator: (email)=>email!=null &&!EmailValidator.validate(email) ? "Enter a valid email":null,
      autofillHints: [AutofillHints.email],
      obscureText: ispass,
      keyboardType: isemail ? TextInputType.emailAddress: TextInputType.text,
      decoration: InputDecoration(
          prefixIcon: Icon(icon),
          enabledBorder: OutlineInputBorder(
          borderSide:BorderSide(color: nearlyBlack),
          borderRadius:  BorderRadius.all(Radius.circular(35)),
          ),
          hintText: hinttext,
         hintStyle: kSmallTextStyle,
        ),
       
    )
  );
    
  }
}
  