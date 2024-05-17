import 'package:flutter/material.dart';

class AppRoutes {
//pushTo========================================================================
  static void pushTo(BuildContext context, pageName) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => pageName));
  }

//pushReplacement========================================================================
  static void pushReplacementTo(
    BuildContext context,
    pageName,
  ) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => pageName));
  }
}
