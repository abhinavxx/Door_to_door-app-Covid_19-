import 'dart:ui';
import 'package:d2d/1.dart';
import 'package:d2d/pharmacy1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '1.dart';
import 'pharmacy1.dart';
import 'profile.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
        theme: ThemeData(
      fontFamily: 'Georgia',
     textTheme: TextTheme(
       body1:TextStyle(
         color:Color(0xFFFFFFFF),
       )),
    ),
      home:MyHome()
      
    );
  }
}
class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

int height=180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
  
      appBar: AppBar(
        leading:IconButton(icon:Icon(Icons.menu),color: Colors.white, onPressed:(){},),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("Door2Door",
        style:TextStyle(fontFamily:"Montserrat",fontSize:18.0,color:Colors.white)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.picture_in_picture), onPressed:(){
             setState(() {
              Navigator.of(context).push(MaterialPageRoute<Null>
                       (builder: (BuildContext context){
                         return Profile();}));
            });
          })
        ],
    ),
    body: Column(
        children: <Widget>[
       SizedBox(height:25.0),
     Padding(
       padding: const EdgeInsets.only(left: 40.0),
       child: Row(
              children: <Widget>[Text("Explore",
              style:TextStyle(fontFamily: "Montserrat",
              color: Colors.white,
              fontWeight:FontWeight.bold,
              fontSize:25.0,
              )
              ),
              SizedBox(width:7.0),
              Text("Here!",
              style: TextStyle(
                fontFamily:"Montserrat",
                color: Colors.white,
                fontSize: 25.0,
              ),
              ),   
              ],
            ),
            
     ),
     SizedBox(height:20.0),
      Expanded(
                  child: Container(
                height: MediaQuery.of(context).size.height - 140.0,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60.0)),
                ),
            
                child: Column (
          crossAxisAlignment: CrossAxisAlignment.stretch,
               children : <Widget>[
        Expanded(child: Row(
               children: <Widget>[
        Expanded(child: GestureDetector(
          onTap: (){
            setState(() {
              Navigator.of(context).push(MaterialPageRoute<Null>
                       (builder: (BuildContext context){
                         return new DoctorPage();}));
            });
          },
          child: ReuseableCard(

          cardChild: IconContent(icon: FontAwesomeIcons.userNurse, label: "Family Doctor",),),
        ),
        ),
        Expanded(child: GestureDetector(
          onTap: (){
            setState(() {
             Navigator.of(context).push(MaterialPageRoute<Null>
                       (builder: (BuildContext context){
                         return new PharmacyPage();

                       }));

            });
          },
                  child: ReuseableCard(
                    
           cardChild: IconContent(icon: FontAwesomeIcons.firstAid, label: "Pharmacy",),),
        ),
        ),
               ], 
         )),
       
        Expanded(child: Row(
               children: <Widget>[
                 
        Expanded(child:ReuseableCard(          
             cardChild: IconContent(icon: FontAwesomeIcons.shoppingBag, label: "Grocery",),
 )),
        Expanded(child:ReuseableCard(       
                cardChild: IconContent(icon: FontAwesomeIcons.donate, label: "Donation",),
)),
        ]  )),
         
        
          ],
          
        )
              ),
      )

        ],
      ),
   bottomNavigationBar: BottomNavigationBar(
     backgroundColor: Colors.teal,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home", style: TextStyle(  fontWeight:FontWeight.bold, fontSize:16),)),
        BottomNavigationBarItem(icon: Icon(Icons.tv), title: Text("News",style: TextStyle(  fontWeight:FontWeight.bold, fontSize:16))),
        BottomNavigationBarItem(icon: Icon(Icons.lightbulb_outline), title: Text("Health Tips",style: TextStyle(  fontWeight:FontWeight.bold, fontSize:16))),
      ],
    ),
      );}}

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label,});
  final IconData icon;
  final String label;
  
  @override
  Widget build(BuildContext context) {
    return Column(
    
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Icon(icon,
      size: 100.0,),
      
      SizedBox(height: 22.0,),
      Text(label, style:TextStyle(fontSize: 22.0,color:Colors.black,),),
    ],);
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({this.cardChild});
 
 final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container (
         child: Material(
           elevation: 8.0,
           child: cardChild),
         
          margin: EdgeInsets.all(19.0),
          decoration: BoxDecoration(
             color: Colors.blueAccent,
          
            borderRadius: BorderRadius.circular(40.0),
          ),
         
        );
  }
}

    