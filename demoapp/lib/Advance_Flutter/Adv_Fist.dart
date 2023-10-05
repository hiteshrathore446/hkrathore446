import 'package:flutter/material.dart';

class Adv_First_Screen extends StatefulWidget {
  const Adv_First_Screen({super.key});

  @override
  State<Adv_First_Screen> createState() => _Adv_First_ScreenState();
}

class _Adv_First_ScreenState extends State<Adv_First_Screen> {
  TextEditingController Fname = TextEditingController();
  TextEditingController Lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  
  String firstname ='';
  String lstname ='';
  String emailadd ='';
  String mobile ='';
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("This is data sending "),
    ),body: Column(
      children: [
        TextField(
          controller: Fname,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)

            )
          ),
        ),
        Container(
          child: Column(
            
            children: [
              TextField(
            controller: Lname,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
        
              )
            ),
          ),



   Container(
          child: Column(
            
            children: [
              TextField(
            controller: email,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
        
              )
            ),
          ),
            ],        ),
   )


            ],        ),

            
        ),
        ElevatedButton(onPressed: (){
          setState(() {
            firstname= Fname.text;
            lstname= Lname.text;
  emailadd= email.text;
          });
        }, child: Text("Chage")),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              
            ),
            child: Column(
              children: [
        Text("the first name  $firstname",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        Text("last name  $lstname",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        Text("Email Address  $emailadd",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        )
      ],
    ),
    );
  }
}