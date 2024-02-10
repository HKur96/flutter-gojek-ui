import 'package:flutter/material.dart';

class TransactionHistoryModel {
  final String icon;
  final String name;
  final Color iconColor;
  final Color bgColor;

  const TransactionHistoryModel({
    required this.icon,
    required this.name,
    required this.bgColor,
    required this.iconColor,
  });
}
