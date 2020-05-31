import 'package:covid_19/country.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
final formatCurrency = new NumberFormat.decimalPattern();

class cntryPage extends StatelessWidget {

   cntry c;
   cntryPage({this.c});
  final formatCurrency = new NumberFormat.decimalPattern();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red.shade800,
        title: Text('${c.country} statistcs'),
      ),
          body: ListView(
        children: <Widget>[
          Card(
            color: Colors.grey.shade100,
            elevation: 3.0,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: ListTile(
                
                title: Container(
                   height: 60.0,
                        color: Colors.red.shade800,
                        child: Center(
                          child: 
                          Text(c.country,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                          fontSize: 26),)
                          
                        )
                        
                ),
                subtitle: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("cases",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                            fontSize: 22)),
                                Text('${formatCurrency.format(c.cases)}'.toString(),
                                style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold),),  
                              ],
                            ),
                    ),

                          Padding(
                            padding: EdgeInsets.all(8),
                                                      child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Today cases",
                                  style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                            fontSize: 22)
                                ),
                                Text(
                                  c.todayCases ==0 && c.todayDeaths==0?'Not announced yet':c.todayCases.toString(),
                                   style: TextStyle(color: Colors.red.shade700,fontSize: 21,fontWeight: FontWeight.bold)
                                ),
                              ],
                            ),
                          ),
                           Padding(
                             padding: EdgeInsets.all(8),
                                                        child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Today deaths",
                                 style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                            fontSize: 22),
                                ),
                                Text(
                                  c.todayDeaths ==0&&c.todayCases==0?'Not announced yet':'${formatCurrency.format(c.todayDeaths)}',
                                   style: TextStyle(color: Colors.red.shade700,fontSize: 21,fontWeight: FontWeight.bold)
                                ),
                              ],
                          ),
                           ),

                           Padding(
                             padding: EdgeInsets.all(8),
                                                        child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Total deaths ",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                            fontSize: 22)),
                                Text('${formatCurrency.format(c.deaths)}'.toString(), style: TextStyle(color: Colors.red.shade700,fontSize: 21,fontWeight: FontWeight.bold),),
                                
                              ],
                          ),
                           ),

                          Padding(
                            padding: EdgeInsets.all(8) ,
                                                      child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Recovered",
                                  style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                            fontSize: 22),
                                ),
                                Text(
                                  '${formatCurrency.format(c.recovered)}'.toString(),
                                  style: TextStyle(color: Colors.green,fontSize: 21,fontWeight: FontWeight.bold)
                                ),
                              ],
                            ),
                          ),

                           Padding(
                             padding: EdgeInsets.all(8),
                                                        child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Active", style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                            fontSize: 22),
                                ),
                                Text('${formatCurrency.format(c.active)}'.toString(),style: TextStyle(color: Colors.blueAccent,fontSize: 21,fontWeight: FontWeight.bold),),
                              ],
                          ),
                           ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Critical", style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                            fontSize: 22),
                                ),
                                Text('${formatCurrency.format(c.critical)}'.toString(),style: TextStyle(color: Colors.grey,fontSize: 21,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Cases Per Million", style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                            fontSize: 22),
                                ),
                                Text('${formatCurrency.format(c.casesPerOneMillion)}'
                                    .toString(),style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold),),
                              ],
                          ),
                           ),
                  ],
                ),
              ),
            ),
          ),
            
]
      ),
    );
  }
}