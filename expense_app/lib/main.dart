import './transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 't1',title: "New Shoes",amount: 65.99,date:DateTime.now()),
    Transaction(id: 't2',title: "Weekly Groceries",amount: 16.99,date:DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense App"),
      ),
      body: Column(
        children: <Widget>[

          Container(
            width: double.infinity,
            child:Card(
              color: Colors.blue,
              child: Text("CHART"),
              elevation: 5,
            )
            ,),

           Column(
             children: transactions.map( (tx){
                   return Card(
                     child: Row(
                       children: <Widget>[
                         Container(
                           margin:EdgeInsets.symmetric(horizontal: 15,vertical: 10.0),
                           decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.purple),),
                           padding: EdgeInsets.all(10),
                           child: Text(
                               tx.amount.toString(),
                               style: TextStyle(
                                   fontWeight:FontWeight.bold,
                                   fontSize: 20.0,
                                   color: Colors.purple),
                           ),
                         ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                              Text(
                                  tx.title,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                              Text(
                                  tx.date.toIso8601String(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                     fontSize: 12.0,
                                     color: Colors.grey
                                  ),
                              )
                           ],
                         )
                       ],
                     )
                   );
             }).toList()
           )
        ],
      ),

    );
  }
}
