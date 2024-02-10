import 'package:flutter/material.dart';

class GojekIconModel {
  final String icon;
  final String title;
  final Color? background;
  final Color? iconColor;

  const GojekIconModel({
    required this.icon,
    required this.title,
    this.background,
    this.iconColor,
  });
}
