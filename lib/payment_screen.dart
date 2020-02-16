import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
        backgroundColor: Colors.black,
      ),
      // body: Center(
        
      // ),
      body: Column(
        children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
        Image.asset(
           'images/logo.png',
           height: 50,
           width: 50,
        ),
        Text("2019 LC 500"),
        Icon(Icons.keyboard_arrow_down),
        Icon(Icons.account_circle)
        
      ],),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text("Account Number: 12345ABCD")
      ],),
      Row(children: <Widget>[
        Image.asset(
           'images/lc500.png',
           height: 230,
           width: 375,
        ),
      ],),
      Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Container(
          width: size.width,
          height: 200,
          // color: Colors.red,
          child: Card(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Colors.grey.shade200,
            elevation: 10,
          ),
        ),
      Column(
        children: <Widget>[
          Text("AMOUNT DUE", style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),),
          Text("\$750.28", style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,)
          ),
          Text("Due date Dec 9, 2020"),
          RaisedButton(
            onPressed: () {},
              child: Text('Make Payment', style: TextStyle(
                color: Colors.white, 
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
                ),),
            color: Colors.blueGrey,
            )
          ],
      ),
      ],)    
      ],)
    );
  }
}