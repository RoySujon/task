import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/screen/expandable_item.dart';
import 'package:task/utls/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: kMainColor,
        systemNavigationBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      // checkerboardRasterCacheImages: true,
      home: const ExpandableItemDrawer(),
    );
  }
}
