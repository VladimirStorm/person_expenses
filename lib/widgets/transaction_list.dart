import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class Transaction_list extends StatelessWidget {
  final List <Transaction> transactions1;
  Transaction_list(this.transactions1);
  
  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions1.map((tx1) {
      return Card(
          child: Row(children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blue, width: 2)),
            child: Text('\$${tx1.amount}', //интерполяция
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            padding: EdgeInsets.all(10)),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey, width: 1),
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsetsDirectional.all(10),
              child: Text(tx1.title,
                  style: TextStyle(
                      color: Colors.deepPurpleAccent[200],
                      fontWeight: FontWeight.bold,
                      fontSize: 15))),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.tealAccent, width: 2),
                  borderRadius: BorderRadius.circular(5)),
              padding: EdgeInsets.all(8),
              child: Text(
                  DateFormat('d-M-y H:m').format(tx1.date1), //пакет intl
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 14)))
        ])
      ]));
    }).toList());
  }
}
