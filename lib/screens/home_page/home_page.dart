import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle/models/vehicle.dart';
import 'package:vehicle/public_widgets/app_bar.dart';
import 'package:vehicle/public_widgets/floating_button.dart';
import 'package:vehicle/screens/home_page/local_widget/vehicle_tile.dart';
import 'package:vehicle/services/local_database.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String, dynamic>> vehicles;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: CustomeAppBar(title: 'HomePage'),
      ),
      body: Consumer<DatabaseHelper>(
        builder: (ctx, data, child) {
          return FutureBuilder(
            future: data.queryAll(),
            builder: (ctx, snap) {
              if(snap.hasData) {
                  print(snap.data);
                  return ListView.builder(
                  itemCount: snap.data.length,
                  itemBuilder: (ctx, i) {
                    return VehicleTile(
                      vehicleNumber: snap.data[i]['vehicleNumber'],
                      maker: snap.data[i]['maker'],
                      model: snap.data[i]['model'],
                      func: (){
                        Navigator.pushNamed(context, 'VehicleProfile', arguments: {'vehicle': Vehicle.fromJson(snap.data[i])});
                      },
                    );
                  },
                );
              }
              return Center(child: CircularProgressIndicator());
            },
          );
        },
      ),  
      floatingActionButton: CustomeFloatingActionButton(
        function: (){
          Navigator.pushNamed(context, 'CreateVehicle');
        },
        icon: Icons.add,
      ),
    );
  }
}


