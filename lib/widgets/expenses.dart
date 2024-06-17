import 'package:expense_tracker/widgets/expenses%20list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = 
  [Expense(title: 'Hamburguer', amount: 100, date: DateTime.now(), category: Category.food), 
  Expense(title: 'T-shirt', amount: 50, date: DateTime.now(), category: Category.clothes), 
  Expense(title: 'Movie', amount: 30, date: DateTime.now(), category: Category.entertainment),
  Expense(title: 'Bus', amount: 5, date: DateTime.now(), category: Category.transport), 
  Expense(title: 'Medicine', amount: 20, date: DateTime.now(), category: Category.health), 
  Expense(title: 'Medicine', amount: 20, date: DateTime.now(), category: Category.health), 
  Expense(title: 'Medicine', amount: 20, date: DateTime.now(), category: Category.health), 
  Expense(title: 'Other', amount: 10, date: DateTime.now(), category: Category.other) ];

  void _OpenAddExpense() {
    showModalBottomSheet(context: context, builder: (ctx) => const NewExpense(),);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {_OpenAddExpense();},
          ),],
      ),
      body: Column(
        children:[
          Expanded(child: ExpensesList(expenses: _registeredExpenses,)),
        ],
      ),
    );
  }
}

