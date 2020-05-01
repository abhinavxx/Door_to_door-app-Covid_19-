import 'package:d2d/doctor_profile.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
class DoctorPage extends StatefulWidget {
  @override
  _DoctorPageState createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  int _index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
        leading:IconButton(icon:Icon(Icons.chevron_left),color: Colors.black, onPressed:(){
          setState(() {
            Navigator.pop(context);
          });
        },),
        backgroundColor: Color(0xFF21BFBD),
        elevation: 0.0,
        title: Text("Family Doctor",
        style:TextStyle(fontFamily:"Georgia",fontSize:18.0,fontWeight: FontWeight.bold,  color:Colors.black)),
        centerTitle: true,
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:<Widget>[
              Expanded(
                            child: Column(children: <Widget>[
            
    Padding(
      padding: const EdgeInsets.only(left:10.0,top:25.0),
      child: Row(children:<Widget>[
        
               Text("Nearest",
                    style:TextStyle(fontFamily: "Georgia",
                    color: Colors.black,
                    fontWeight:FontWeight.bold,
                    fontSize:25.0,
                    ),
                    ),
                    SizedBox(width:7.0),
                    Text("Doctor",
                    style: TextStyle(
                      fontFamily:"Georgia",
                      color: Colors.black,
                      fontSize: 25.0,
                      
                    ),
                    
                    ),
                   
                    
          ]),
    ),
       Padding(
           padding: const EdgeInsets.only(right:30.0, left:8.0,top:4.0),
           child: Divider(
                      color: Colors.black,),
       ),
                    
                  
                ],),
              ),
               Padding(
                 padding: const EdgeInsets.only(top:10.0),
                 child: Row(
                   children: <Widget>[
                      Column(
                       children: <Widget>[
                         
                         Container(
                           height: 200,
                           width: 50,
                           decoration: BoxDecoration(
             color: Color(0xFF21BFBD),
          
            borderRadius: BorderRadius.circular(20.0),
          ),
                      
                           child: Padding(
                             padding:  EdgeInsets.only(top:12.0, bottom:8.0),
                             child: Column(children:<Widget>[Expanded(child: Text("H")),
                          Expanded(child: Text("E")),
                             Expanded(child: Text("A")),
                              Expanded(child: Text("R")),
                               Expanded(child: Text("T")),]),
                           ),
                           
                         ),
                       ],
                     ),
                     SizedBox(
            height: 250,
            width:280, // card height
            child: PageView.builder(
              itemCount: 10,
              controller: PageController(viewportFraction: 0.7),
              onPageChanged: (int index) => setState(() => _index = index),
              itemBuilder: (_, i) {
                      return Transform.scale(
                        scale: i == _index ? 1 : 0.9,
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                             Navigator.of(context).push(MaterialPageRoute<Null>
                       (builder: (BuildContext context){
                         return new DoctorProfile();}));
                            });
                          },
                                                  child: Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: CircleAvatar(
                               radius: 70,
                               backgroundImage:AssetImage("assets/1.jpg")
                             ),
                           ),

                                Padding(
           padding: const EdgeInsets.only(right:4.0, left:4.0,top:4.0),
           child: Divider(
                      color: Colors.black,),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Padding(
           padding: const EdgeInsets.only(left:10.0),
           child: Text("Dr. J.P Srivastava" ,style:TextStyle(fontFamily:"Georgia", fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20),),
         ),
       )
                              ],

                            ),
                          ),
                        ),
                      );
              },
            ),
          ),
                   ],
                 ),
               ),
               SizedBox(height: 20,),
                Padding(
                 padding: const EdgeInsets.only(top:10.0),
                 child: Row(
                   children: <Widget>[
                      Column(
                       children: <Widget>[
                         
                         Container(
                           height: 200,
                           width: 50,
                           decoration: BoxDecoration(
             color: Color(0xFF21BFBD),
          
            borderRadius: BorderRadius.circular(20.0),
          ),
                      
                           child: Padding(
                             padding:  EdgeInsets.only(top:12.0, bottom:8.0),
                             child: Column(children:<Widget>[Expanded(child: Text("")),
                          Expanded(child: Text("E")),
                             Expanded(child: Text("A")),
                              Expanded(child: Text("R")),
                               Expanded(child: Text("T")),]),
                           ),
                           
                         ),
                       ],
                     ),
                     SizedBox(
            height: 250,
            width:280, // card height
            child: PageView.builder(
              itemCount: 10,
              controller: PageController(viewportFraction: 0.7),
              onPageChanged: (int index) => setState(() => _index = index),
              itemBuilder: (_, i) {
                      return Transform.scale(
                        scale: i == _index ? 1 : 0.9,
                        child: Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: CircleAvatar(
                             radius: 70,
                             backgroundImage:AssetImage("assets/1.jpg")
                           ),
                         ),

                              Padding(
           padding: const EdgeInsets.only(right:4.0, left:4.0,top:4.0),
           child: Divider(
                      color: Colors.black,),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text("Dr. A.K Rai" ,style:TextStyle(fontFamily:"Georgia", fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20),
         ),
       ),
                            ],

                          ),
                        ),
                      );
              },
            ),
          ),
                   ],
                 ),
               ),
               SizedBox(height: 40,),
               
            ]
          ),
        )

      
    );}}