import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle/models/vehicle.dart';
import 'package:vehicle/public_widgets/app_bar.dart';
import 'package:vehicle/public_widgets/floating_button.dart';

class CreateVehicleProfile extends StatefulWidget {
  @override
  _CreateVehicleProfileState createState() => _CreateVehicleProfileState();
}

class _CreateVehicleProfileState extends State<CreateVehicleProfile> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Vehicle vehicle = Provider.of<Vehicle>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: CustomeAppBar(title: 'Create Vehicle Profile'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('VEHICLE NUMBER'),
            SizedBox(height: 10.0,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0
                  )
                )
              ),
              controller: _controller,
            ),
          ],
        ),
      ),
      floatingActionButton: CustomeFloatingActionButton(
        function: () {
          vehicle.vehicleNumber = _controller.text;
          Navigator.pushNamed(context, 'SelectClass');
        },
        icon: Icons.arrow_forward_ios,
      ),
    );
  }
}