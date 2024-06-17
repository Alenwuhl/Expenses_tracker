import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  IconData _getCategoryIcon(Category category) {
    switch (category) {
      case Category.food:
        return Icons.restaurant;
      case Category.clothes:
        return Icons.shopping_bag;
      case Category.entertainment:
        return Icons.local_movies;
      case Category.transport:
        return Icons.directions_car;
      case Category.health:
        return Icons.medication_liquid;
      case Category.other:
      default:
        return Icons.category;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blueAccent,
          child: Icon(
            _getCategoryIcon(expense.category),
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Text(
          expense.title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          expense.date.toLocal().toString().split(' ')[0],
          style: TextStyle(color: Colors.grey[600]),
        ),
        trailing: Text(
          '\$${expense.amount.toStringAsFixed(2)}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
