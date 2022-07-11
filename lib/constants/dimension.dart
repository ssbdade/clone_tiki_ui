import 'package:flutter/material.dart';

const double designScreenHeight = 1080;
const double designScreenWidth = 2340;

class Dimension {
  double? width;
  double? height;

  Dimension(this.width, this.height);
}

Dimension dimension(BuildContext context) {
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;

  return Dimension(w, h);
}

double getWidth(context) {
  return MediaQuery.of(context).size.width;
}

double getHeight(context) {
  return MediaQuery.of(context).size.height;
}

double height(BuildContext context, double size) {
  double ratio = MediaQuery.of(context).size.height / designScreenHeight;

  return ((size * ratio )/ 1.5).ceil().toDouble();
}

double width(BuildContext context, double size) {
  double ratio = MediaQuery.of(context).size.width / designScreenWidth;
  return (size * ratio * 0.75).ceil().toDouble();
}

double fontSize(BuildContext context, double size) {
  double ratio = MediaQuery.of(context).size.width / designScreenWidth;
  return (size * ratio).ceil().toDouble();
}