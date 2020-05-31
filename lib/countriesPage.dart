import 'package:covid_19/country.dart';
import 'package:covid_19/countryPage.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class country extends StatefulWidget {
  country({Key key}) : super(key: key);

  @override
  _countryState createState() => _countryState();
}

class _countryState extends State<country> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: Cdata.length,
        itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text('${Cdata[index]['country']}',
              style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
            )
            ),

            onTap: (){
              cntry c = cntry(country:Cdata[index]['country'].toString(),cases: Cdata[index]['cases'],
              active: Cdata[index]['active'],casesPerOneMillion: Cdata[index]['casesPerOneMillion'],
              critical: Cdata[index]['critical'],deaths:Cdata[index]['deaths'],
              recovered: Cdata[index]['recovered'],todayCases: Cdata[index]['todayCases'],
              todayDeaths: Cdata[index]['todayDeaths']);
             Navigator.push(context, MaterialPageRoute(builder: (context)=> cntryPage(c: c)));

            },
        );
       },
      
    );
  }
}