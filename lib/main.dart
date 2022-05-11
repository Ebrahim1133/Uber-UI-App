import 'package:flutter/material.dart';
import 'package:uber/Uber_app_ui/providers/walkthrough_provider.dart';
import 'package:uber/Uber_app_ui/router.dart';
import 'package:uber/Uber_app_ui/styles/theme_data.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => WalkthroughProvider(),
      child: MaterialApp(
      title: 'Uber app UI',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        theme: ThemeScheme.light(),
        initialRoute: WalkthroughRoute,
      ),
    ),
  );
}