import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_ios/steperUi/seteper_provider.dart';

class Steper_Screen extends StatefulWidget {
  const Steper_Screen({Key? key}) : super(key: key);

  @override
  State<Steper_Screen> createState() => _Steper_ScreenState();
}

class _Steper_ScreenState extends State<Steper_Screen> {
  steperProvidder? providerF;
  steperProvidder? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<steperProvidder>(context, listen: false);
    providerT = Provider.of<steperProvidder>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Edit your profile"),
        ),
        body: Stepper(
            currentStep: providerT!.i,
            onStepContinue: () => providerT!.conti(),
            onStepCancel: () => providerT!.can(),

            steps: [
              Step(title: Text('Profile Picture',style: TextStyle(fontWeight: FontWeight.bold),), content: Text('')),
              Step(title: Text('Name',style: TextStyle(fontWeight: FontWeight.bold)), content: Text('')),
              Step(title: Text('Phone',style: TextStyle(fontWeight: FontWeight.bold)), content: Text('')),
              Step(title: Text('Email',style: TextStyle(fontWeight: FontWeight.bold)), content: Text('')),
              Step(title: Text('Gender',style: TextStyle(fontWeight: FontWeight.bold)), content: Text('')),
              Step(title: Text('Current Location',style: TextStyle(fontWeight: FontWeight.bold)), content: Text('')),
              Step(title: Text('DOB',style: TextStyle(fontWeight: FontWeight.bold)), content: Text('')),
              Step(title: Text('Religen',style: TextStyle(fontWeight: FontWeight.bold)), content: Text('')),
              Step(title: Text('Language',style: TextStyle(fontWeight: FontWeight.bold)), content: Text('')),
            ]),
      ),
    );
  }
}
