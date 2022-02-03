import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget{

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
 
 int contador=10;

   @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador-Jose Braulio Ayala Benavides"),
        elevation: 4.0,
      ),
      body: Center(
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Numero de Taps/clics"),
            Text("$contador"),
          ],
        )
        
      ),
      floatingActionButton: Row(
        children: [
          SizedBox(
          width: 20.0,
      ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
          contador=contador+1;
          setState(() {
          });
          print(contador);
        },
      ),
      SizedBox(
          width: 122.0,
      ),
      FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: (){
          contador=contador-1;
          setState(() {
          });
          print(contador);
        },
      ),
      SizedBox(
          width: 100.0,
      ),
      FloatingActionButton(
          child: Icon(Icons.restore),
          onPressed: (){
          contador=0;
          setState(() {
          });
          print(contador);
        },
      ),
        ],
      ),
      
    );
  }
}