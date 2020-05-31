import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'main.dart';
import 'package:intl/intl.dart';
class worldPage extends StatefulWidget {
  worldPage({Key key}) : super(key: key);

  @override
  _worldPageState createState() => _worldPageState();
}

class _worldPageState extends State<worldPage> {
  final formatCurrency = new NumberFormat.decimalPattern();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[

//cases card
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.grey,width: .5,
 
             ),),
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                children: <Widget>[
                  Padding(
                   padding: EdgeInsets.only(top:10.0,bottom:10.0),
                   child: Row( 
                    children: <Widget>[
                    Text('Global',style: TextStyle(fontSize: 18,
                    fontWeight:FontWeight.w300,color: Colors.grey))
                  ],)
                  ),
                 Padding(
                   padding: EdgeInsets.only(top:10.0),
                   child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                    Text('Coronavirus cases',style: TextStyle(fontSize: 25,
                    fontWeight:FontWeight.bold,color: Colors.black)),

                     Text(data['cases'] != null ?'${formatCurrency.format(data['cases'])}':'?',style: TextStyle(fontSize: 25,
                    fontWeight:FontWeight.bold,color: Colors.black))
                  ],),
                 )
                ],
              ),
            ),
          ),


//deathes card
           Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.grey,width: .5,
 
             ),),
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                children: <Widget>[
                  Padding(
                   padding: EdgeInsets.only(top:10.0,bottom:10.0),
                   child: Row( 
                    children: <Widget>[
                    Text('Global',style: TextStyle(fontSize: 18,
                    fontWeight:FontWeight.w300,color: Colors.grey))
                  ],)
                  ),
                 Padding(
                   padding: EdgeInsets.only(top:10.0),
                   child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                    Text('Deaths',style: TextStyle(fontSize: 25,
                    fontWeight:FontWeight.bold,color: Colors.black)),

                     Text(data['deaths'] != null ?'${formatCurrency.format(data['deaths'])}':'?',style: TextStyle(fontSize: 25,
                    fontWeight:FontWeight.bold,color: Colors.red.shade600))
                  ],),
                 )
                ],
              ),
            ),
          ),
       

//recoverd card

    Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.grey,width: .5,
 
             ),),
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                children: <Widget>[
                  Padding(
                   padding: EdgeInsets.only(top:10.0,bottom:10.0),
                   child: Row( 
                    children: <Widget>[
                    Text('Global',style: TextStyle(fontSize: 18,
                    fontWeight:FontWeight.w300,color: Colors.grey))
                  ],)
                  ),
                 Padding(
                   padding: EdgeInsets.only(top:10.0),
                   child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                    Text('Recovered',style: TextStyle(fontSize: 25,
                    fontWeight:FontWeight.bold,color: Colors.black)),

                     Text(data['recovered'] != null ?'${formatCurrency.format(data['recovered'])}':'?',style: TextStyle(fontSize: 25,
                    fontWeight:FontWeight.bold,color: Colors.green
                    ))
                  ],),
                 )
                ],
              ),
            ),
          ),
       
       


        ],
      ),
    );
  }
}