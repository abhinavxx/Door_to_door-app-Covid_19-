import 'package:flutter/material.dart';
class PharmacyPage extends StatefulWidget {
  @override
  _PharmacyPageState createState() => _PharmacyPageState();
}

class _PharmacyPageState extends State<PharmacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        leading:IconButton(icon:Icon(Icons.chevron_left),color: Colors.white,onPressed:(){
          setState(() {
            Navigator.pop(context);
          });
        },),
        backgroundColor: Color(0xFF21BFBD),
        elevation: 0.0,
        title: Text("PHARMACY",
        style:TextStyle(fontFamily:"Montserrat",fontSize:25.0,color:Colors.white)),
        centerTitle: true,
      
    ),
        body: Container(
            constraints: BoxConstraints.expand(),
  decoration: BoxDecoration(
  image: DecorationImage(
	image: AssetImage("assets/2.jpg"),
  fit: BoxFit.cover)
  ),
 
     ),
 
    );
  }
}