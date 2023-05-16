import 'package:flutter/material.dart';

final hintTextStyle = TextStyle(
  color: Color.fromARGB(137, 35, 34, 34),
  fontFamily: 'OpenSans',
);

final labelStyle = TextStyle(
  color: Color.fromARGB(255, 255, 255, 255),
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final boxDecorationStyle = BoxDecoration(
  color: Color.fromARGB(255, 255, 255, 255),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
