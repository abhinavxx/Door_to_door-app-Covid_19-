import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
          body: Column(
                 children: <Widget>[
                 Padding(
        padding: const EdgeInsets.only(left:10.0,top:25.0),
        child: Row(children:<Widget>[
          IconButton(icon:Icon(Icons.chevron_left),color: Colors.black, onPressed:(){
             Navigator.pop(context);
          }),
                 Text("Health",
                      style:TextStyle(fontFamily: "Georgia",
                      color: Colors.black,
                      fontWeight:FontWeight.bold,
                      fontSize:30.0,
                      )
                      ),
                      SizedBox(width:7.0),
                      Text("Card",
                      style: TextStyle(
                        fontFamily:"Georgia",
                        color: Colors.black,
                        fontSize: 30.0,
                        
                      ),
                      
                      ),
                     
                      
            ]),
      ),    
          Expanded(child:ReuseableCard(          
               cardChild: Column(
                 children: <Widget>[
                   Column(
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
                      color: Colors.grey,),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Padding(
           padding: const EdgeInsets.only(left:10.0),
           child: Text("Dr. J.P Srivastava" ,style:TextStyle(fontFamily:"Georgia", fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20),),
         ),
       ),
        Padding(
         padding: const EdgeInsets.all(8.0),
         child: Padding(
           padding: const EdgeInsets.only(left:10.0),
           child: Text("Contact No. - 8448234222" ,style:TextStyle(fontFamily:"Georgia", fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20),),
         ),
       ),
        Padding(
         padding: const EdgeInsets.all(8.0),
         child: Padding(
           padding: const EdgeInsets.only(left:4.0),
           child: Text("Your Health Condition:       " ,style:TextStyle(fontFamily:"Georgia", fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20),),
         ),
       ),

                              ],

                            ),
                 ],
               ))),
          Expanded(child:ReuseableCard(       
                  cardChild:
                  
                   Column(
                    children: <Widget>[
                                            SizedBox(height: 15,),

                      Text("B.P level -",style:TextStyle(fontFamily:"Georgia", fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20),),
                      SizedBox(height: 15,),
                      Row(children: <Widget>[
                        Text("Liver Problem-",style:TextStyle(fontFamily:"Georgia", fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20),),
                      ],),
                                            SizedBox(height: 15,),

                      Row(children: <Widget>[
                        Text("Heart Problem-",style:TextStyle(fontFamily:"Georgia", fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20),)
                      ],),
                                            SizedBox(height: 15,),

                      Row(children: <Widget>[
                        Text("Headache Problem-",style:TextStyle(fontFamily:"Georgia", fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20),)
                      ],),
                                            SizedBox(height: 15,),

                      Row(children: <Widget>[
                        Text("Stomach Problem-",style:TextStyle(fontFamily:"Georgia", fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20),)
                      ],),
                                            SizedBox(height: 15,),
                      SizedBox(height: 15,),

                    ],
                  )
)),
          ]  ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({this.cardChild});
 
 final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container (
         child: Material(
           elevation: 4.0,
           child: cardChild),
         
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
             color: Colors.blueAccent,
          
            borderRadius: BorderRadius.circular(40.0),
          ),
         
        );
  }
}

    