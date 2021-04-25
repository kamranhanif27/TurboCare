import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle/models/vehicle.dart';
import 'package:vehicle/providers/wheelers_viewmodel.dart';
import 'package:vehicle/public_widgets/app_bar.dart';
import 'package:vehicle/screens/add_vehicle/local_widgets/maker_tile.dart';

class SelectModel extends StatelessWidget {

  final String wheels;
  final String maker;

  const SelectModel({Key key, this.wheels, this.maker}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    WheelersViewModel wheeler = Provider.of<WheelersViewModel>(context);
    wheeler.loadModelData(wheels, maker);
    Vehicle vehicle = Provider.of<Vehicle>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: CustomeAppBar(
          title: 'Select Model',
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: wheeler.wheelerModle.length,
          itemBuilder: (context, i){
            return MakerTile(
              name: wheeler.wheelerModle[i].name,
              func: (){
                vehicle.setModel = wheeler.wheelerModle[i].name;
                Navigator.pushNamed(context, 'SelectFuel');
              },
            );
          },
        ),
      ),
    );
  }
}