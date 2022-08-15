import 'package:design/constant/SizeConfig.dart';
import 'package:design/screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Practice',
              theme: ThemeData(primarySwatch: Colors.blue),
              home: HomeScreen(),
              // home: DashBoardScreen(),
            );
          },
        );
      },
    );
  }
}
