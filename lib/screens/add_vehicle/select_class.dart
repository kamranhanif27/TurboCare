import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle/providers/wheelers_viewmodel.dart';
import 'package:vehicle/public_widgets/app_bar.dart';
import 'package:vehicle/screens/add_vehicle/local_widgets/maker_tile.dart';

class SelectClass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    WheelersViewModel wheeler = Provider.of<WheelersViewModel>(context);
    wheeler.loadMakerData();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: CustomeAppBar(
          title: 'Select Class',
        ),
      ),
      body: Container(
        child: ListView(children: [
          MakerTile(
            name: 'Two Weeler',
            func: (){
              Navigator.pushNamed(context, 'SelectMaker', arguments: {'wheeler': wheeler.twoWheelersClass});
            },
          ),
          MakerTile(
            name: 'Four Weeler',
            func: (){
              Navigator.pushNamed(context, 'SelectMaker', arguments: {'wheeler': wheeler.foutWheelersClass});
            },
          )
        ]),
      ),
    );
  }
}
