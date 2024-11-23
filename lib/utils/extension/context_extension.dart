import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void showSnack(String message, {String? actionLabel, VoidCallback? onClick}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
          content: Text(
            message,
          ),
          duration: Duration(seconds: 3),
          action: SnackBarAction(
            label: 'View Profile',
            onPressed: () => onClick!.call(),
          )),
    );
  }
}
