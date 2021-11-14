import 'package:flutter/material.dart';

class New_transction extends StatelessWidget {
  final titleController1 = TextEditingController();
  final amountController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Введите заглавие'),
                      controller: titleController1),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'Введите цену'),
                      controller: amountController1),
                  FlatButton(
                      child: Text('Добавить транзакцию'),
                      textColor: Colors.purple,
                      onPressed: () {
                        print(titleController1.text); // проверка присваив-я
                        print(amountController1.text); //вывод цены в терминал
                      })
                ])));
  }
}
