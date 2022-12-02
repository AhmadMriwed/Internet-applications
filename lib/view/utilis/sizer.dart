import 'package:flutter/widgets.dart';

class SizerApp{
  static double getHeight(BuildContext context)=> MediaQuery.of(context).size.height;
  static double getWidth(BuildContext context)=> MediaQuery.of(context).size.width;
}
