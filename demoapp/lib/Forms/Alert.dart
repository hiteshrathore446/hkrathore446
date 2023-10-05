import 'package:flutter/material.dart';

class Alert_Screen extends StatefulWidget {
  const Alert_Screen({super.key});

  @override
  State<Alert_Screen> createState() => _Alert_ScreenState();
}

class _Alert_ScreenState extends State<Alert_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.amber,
            actions: [
                IconButton(onPressed: (){
                myDiloge(context);
                }, icon: Icon(Icons.home))
            ],
        ),body: Container(
            child: ElevatedButton(onPressed: (){
                myDiloge(context);
            }, child: Text("Click")),
        ),
    );
}
   void myDiloge(BuildContext context){
AlertDialog alertDialog=AlertDialog(
    title: Text("Simple Alert Dilog"),
    content: Text("This is your alert dilog"),
    actions: [
        TextButton(onPressed: (){
            Navigator.of(context).pop();
        }, child: Text("OK"))
    ],
);
showDialog(context: context, builder: (BuildContext context ){
return alertDialog;
});
   }
}