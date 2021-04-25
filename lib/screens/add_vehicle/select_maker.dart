import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle/models/vehicle.dart';
import 'package:vehicle/models/wheeler.dart';
import 'package:vehicle/public_widgets/app_bar.dart';
import 'package:vehicle/screens/add_vehicle/local_widgets/maker_tile.dart';

class SelectMaker extends StatelessWidget {

  final List<Wheeler> wheelers;

  const SelectMaker({Key key, this.wheelers}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Vehicle vehicle = Provider.of<Vehicle>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: CustomeAppBar(
          title: 'Select Maker',
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: wheelers.length,
          itemBuilder: (context, i){
            return MakerTile(
              name: wheelers[i].name,
              func: (){
                vehicle.setMaker = wheelers[i].name;
                Navigator.pushNamed(context, 'SelectModel', arguments: {'wheels': wheelers[i].wheelerClass, 'maker': wheelers[i].name});
              },
            );
          },
        ),
      ),
    );
  }
}