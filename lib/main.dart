import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle/config/routes/route_generator.dart';
import 'package:vehicle/models/vehicle.dart';
import 'package:vehicle/providers/wheelers_viewmodel.dart';
import 'package:vehicle/screens/home_page/home_page.dart';
import 'package:vehicle/services/local_database.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: DatabaseHelper(),
        ),
        ChangeNotifierProvider.value(
          value: Vehicle(),
        ),
        ChangeNotifierProvider.value(
          value: WheelersViewModel(),
        ),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
      onGenerateRoute: RouteGenerator.generateRoute,
    ),
    );
  }
}
