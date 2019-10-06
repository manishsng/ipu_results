import 'package:flutter/material.dart';

final Color kUIColor = Colors.blue;

final LinearGradient kLg =
    LinearGradient(colors: [Colors.blue, Colors.indigoAccent.shade700]);

final Shader kLinearGradient = LinearGradient(
  colors: <Color>[Colors.blue, Colors.indigoAccent.shade700],
).createShader(Rect.fromLTWH(0.0, 0.0, 150.0, 70.0));
