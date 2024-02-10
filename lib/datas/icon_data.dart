import 'package:flutter/material.dart';
import 'package:gojek_ui/models/gojek_icon_model.dart';
import 'package:gojek_ui/theme.dart';

List<GojekIconModel> gGopayIcons = [
  const GojekIconModel(icon: 'pay', title: 'Bayar'),
  const GojekIconModel(icon: 'topup', title: 'Top Up'),
  const GojekIconModel(icon: 'explore', title: 'Eksplor'),
];

List<GojekIconModel> gMenuIcons = [
  GojekIconModel(icon: 'goride', title: 'GoRide', background: green2),
  GojekIconModel(icon: 'gocar', title: 'GoCar', background: green2),
  GojekIconModel(icon: 'gofood', title: 'GoFood', background: red),
  GojekIconModel(icon: 'gosend', title: 'GoSend', background: green2),
  GojekIconModel(icon: 'gomart', title: 'GoMart', background: red),
  GojekIconModel(icon: 'gopulsa', title: 'GoPulsa', background: blue2),
  GojekIconModel(
    icon: 'goclub',
    title: 'GoClub',
    background: Colors.white,
    iconColor: purple,
  ),
  GojekIconModel(
    icon: 'other',
    title: 'Lainnya',
    background: dark4,
    iconColor: dark1,
  ),
];
