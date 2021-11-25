import 'package:bennett/constants.dart';
import 'package:flutter/material.dart';
import 'package:bennett/colors.dart';
class Profile extends StatefulWidget{
  @override
  _ProfileState createState()=> _ProfileState();
}

class _ProfileState extends State<Profile>
{
  @override
   Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:background,
      body: ListView(
        children: <Widget>[
          _top(),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Category",style: courseTextStyle2,),
              Text("View All",style: kSmallTextStyle,),
            ],
          ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            child:GridView(
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 3/2),
              children: <Widget>[
                _gridItem(Icons.airport_shuttle),
                _gridItem(Icons.add_shopping_cart),
                _gridItem(Icons.arrow_drop_down_circle),
                _gridItem(Icons.bluetooth_searching),
                _gridItem(Icons.add_location),
                _gridItem(Icons.arrow_drop_down_circle),
              ],
              ),
              ),
              Padding(padding: EdgeInsets.all(16),
              child: Row(
                children: <Widget>[
                  Text("Latest",style: courseTextStyle2,)
                ],
              ),
              ),
              _cardItem(1),
              _cardItem(2),
              _cardItem(3),
              _cardItem(4),
        ],
        ),   
    );
   }

 _cardItem(image){
   return Padding(
     padding: EdgeInsets.all(16),
     child: Row(
       children: <Widget>[
         Container(
           width:100 ,
           height: 100,
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage('assets/$image.jpg'),
             fit: BoxFit.cover,
             ),
             borderRadius: BorderRadius.circular(20)
           ),
         ),
         SizedBox(
           width: 20,),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Text('Events',style: courseTextStyle2,),
               SizedBox(height: 10,),
               Text('15 item',style: kSmallTextStyle,),
               
             ],
           )
       ],
     ),
   );
 }

  _gridItem(icon){
    return Column(
      children: <Widget>[
        CircleAvatar(
          child: Icon(
            icon,size:16,
            color: white,
          ),
          backgroundColor: nearlyBlue.withOpacity(0.9),
        ),
        SizedBox(height: 10,),
        Text("Birthday",style: kSmallTextStyle,)
      ],
    );
  }


    _top(){
      return Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: nearlyDarkBlue,
        borderRadius:BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        )
        ),
        child: Column(
          children:<Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage:AssetImage('assets/profile-img.jpg') ,
                  ),
                   SizedBox(width: 10,),
                   Text("Hello user",style: courseTextStyle,),
                ],
              ), 
              IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.notifications),
            color: white,)
            ],
          ), 
         SizedBox(height: 30,),
         TextField(
           decoration: InputDecoration(
             hintText: "Search",
             fillColor: white,
             filled: true,
             suffixIcon: Icon(Icons.filter_list),
             enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(20),
               borderSide: BorderSide(color: Colors.transparent),
             ),
             contentPadding: EdgeInsets.symmetric(horizontal:16,vertical:16)
           ),
         ) 
        ],
        ),
      );
    }
    }