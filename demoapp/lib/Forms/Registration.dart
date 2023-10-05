import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration_Screen extends StatefulWidget {
  const Registration_Screen({super.key});

  @override
  State<Registration_Screen> createState() => _Registration_ScreenState();
}

class _Registration_ScreenState extends State<Registration_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          height: 700,
          width: 500,
          decoration:BoxDecoration(
            color: Colors.white,
          ),child: Column(
            children: [
           Container(
            height: 100,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(image: AssetImage("assets/Events.PNG"))
            ),
           ), Column(
             children: [
               Container(
                height: 100,
                width: 450,
                  decoration: BoxDecoration(
                         image: DecorationImage(image: AssetImage("assets/registration.PNG",),fit: BoxFit.contain)                
                      )
                      ),  Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                            width: 220,
                            decoration: BoxDecoration(
                            ),child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: Text("First Name",style: GoogleFonts.robotoSerif(
                                    fontSize: 15
                                  ),),
                                ),TextField(
                                  decoration: InputDecoration(
                                    hintText: "First Name",
                                    border: OutlineInputBorder()
                                  ),
                                             
                            )]
                                          ),
                            ),
                          ),Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                              children: [
                                Container(
                            
                                  width: 240,
                                  decoration: BoxDecoration(
                                
                                  ),child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text("Last Name",style: GoogleFonts.robotoSerif(
                                    fontSize: 15
                                  )),
                            ),TextField(
                              decoration: InputDecoration(
                                hintText: "Last Name",
                                border: OutlineInputBorder()
                              ),
                            ),
                          ],
                        ),
                       ),
                    ],
                  ),
                 ),             
                ],)
            ]),Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Text("Email Address",style: GoogleFonts.robotoSerif(
                                    fontSize: 15
                                  )),
                        ),Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Email Address"
                            ),
                          ),
                        ),   Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Text("Company (if applicable)",style: GoogleFonts.robotoSerif(
                                    fontSize: 15
                                  )),
                        ),Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Company"
                            ),
                          ),
                        ),   Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Text("Physical Address",style: GoogleFonts.robotoSerif(
                                    fontSize: 15
                                  )),
                        ),Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Physical Address"
                            ),
                          ),
                        ),  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text("Date of Birth",style: GoogleFonts.robotoSerif(
                                      fontSize: 15
                                    )),
                        ),
                       TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Month",
                          suffixIcon: Icon(Icons.arrow_drop_down)
                        )
,                       ),
                        ],
                      ),
                    ),Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(""),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 12),
                         child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Day",
                            suffixIcon: Icon(Icons.arrow_drop_down)
                          )
                       ,                       ),
                       ),
                        ],
                      ),
                    ),Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(""),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 12),
                         child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Year",
                            suffixIcon: Icon(Icons.arrow_drop_down)
                          )
                       ,                       ),
                       ),
                        ],
                      ),
                    ),Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: Column(
                    // //    crossAxisAlignment: CrossAxisAlignment.start,
                    //     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     Icon(Icons.calendar_month,size: 30,)
                     ]   )
,                       ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
                  ],
                ),
              )

                       
                ]    ),
          ) ])]))          
          ),backgroundColor: Colors.white,
        );}
}