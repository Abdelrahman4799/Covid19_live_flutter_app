import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import 'package:splashscreen/splashscreen.dart';
import 'package:covid_19/worldPage.dart';
import 'package:covid_19/countriesPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Map data;
var Cdata;

void main()async {
    http.Response response = await http.get(
    Uri.encodeFull(
    'https://coronavirus-19-api.herokuapp.com/all?fbclid=IwAR0PskVcx2MKmU63I7Lwi3HsAwJUtIQUV7_bUbAy17amedEPRDzHfXwYJ3c'),
    
    );
   data = json.decode(response.body);

http.Response Cresponse = await http.get(
    Uri.encodeFull(
    'https://coronavirus-19-api.herokuapp.com/countries?fbclid=IwAR3wSmmi6KhmwiaqNmYpwx8bvtp8t6m2N4SW-4yzPx_Vma6U6KzMqYKGi9I'),
    
    );
   Cdata = json.decode(Cresponse.body);
   
  runApp(tabView());

}

class tabView extends StatefulWidget {
  tabView({Key key}) : super(key: key);

  @override
  _tabViewState createState() => _tabViewState();
}

class _tabViewState extends State<tabView> {

   @override
  void initState() {
    super.initState();    
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home:new SplashScreen(
        seconds: 4,
        title: Text(
          'Covid-19 Statistics',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white,
          
        ),
        ),
        backgroundColor: Color(0xFFFF1919),
         styleTextUnderTheLoader: TextStyle(
        color: Colors.white,
      ),
      image: Image.asset('assets/logo.png'),
      photoSize: 200.0,
      loaderColor: Colors.white,
      loadingText: Text(
        "يتم التحميل...",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      navigateAfterSeconds: DefaultTabController(
        length: 2,
        child: MaterialApp(
                debugShowCheckedModeBanner: false,
                  home: Scaffold(
            
            appBar: AppBar(
              bottom: TabBar(
                labelStyle: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                tabs: [
                  Tab(text : 'World' ),
                  Tab(text :'Countries'),
                ],
              ),
              title: Text('Covid-19 statistics ',),
              backgroundColor: Colors.red.shade800,
              centerTitle: true,
            ),
            body: TabBarView(
              children: [
                 new worldPage(),
                new country(),
              ],
            ),
          ),
        ),
      ) ,

         )
    );
  }
}