import 'package:flutter/material.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class User_transactions extends StatefulWidget {
  @override
  _User_transactionsState createState() => _User_transactionsState();
}

class _User_transactionsState extends State<User_transactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1',
        title: 'My new computer',
        amount: 39.99,
        date1: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'My brand shoes',
        amount: 66.99,
        date1: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date1: DateTime.now(),
        id: DateTime.now().toString(),);

        setState(() {
          _userTransaction.add(newTx);
        });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        New_transction(),
        Transaction_list(_userTransaction),
      ],
    );
  }
}
