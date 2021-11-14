import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';
import 'models/transaction.dart';

void main() => runApp(MyAppExp());

class MyAppExp extends StatelessWidget {
  final titleController1 = TextEditingController(); // 2 -метод
  final amountController1 = TextEditingController(); // с помощью контроллера.

  final List<Transaction> transactions1 = [
    Transaction(
        id: 't1',
        title: 'My new computer',
        amount: 39.99,
        date1: DateTime.now()),
    Transaction(
        id: 't2', title: 'My brand shoes', amount: 66.99, date1: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("myAppExpTitle")),
            body: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      width: double.infinity,
                      child: Card(
                          color: Colors.yellow,
                          elevation: 10,
                          child: Text('CHART'))),                  
                 User_transactions(),
                ])));
  }
}
