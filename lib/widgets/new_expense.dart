import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          TextField(
            maxLength: 30,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Date'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Add Expense'),
          ),
        ],
      ),
    )
  }
}