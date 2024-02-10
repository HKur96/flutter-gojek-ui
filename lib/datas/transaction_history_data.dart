import 'package:flutter/material.dart';
import 'package:gojek_ui/models/transaction_history_model.dart';
import 'package:gojek_ui/theme.dart';

List<TransactionHistoryModel> gListTransactionHistory = [
  TransactionHistoryModel(
    icon: 'goride',
    name: 'Pintu masuk stasiun Gubeng',
    iconColor: Colors.white,
    bgColor: green1,
  ),
  TransactionHistoryModel(
    icon: 'gocar',
    name: 'Terminal 1 Bandara Juanda',
    iconColor: Colors.white,
    bgColor: green1,
  ),
  TransactionHistoryModel(
    icon: 'gofood',
    name: 'Sego babat Cak Yasin',
    iconColor: Colors.white,
    bgColor: red,
  ),
  TransactionHistoryModel(
    icon: 'gosend',
    name: 'Pusat Grosir Surabaya',
    iconColor: Colors.white,
    bgColor: green1,
  ),
];
