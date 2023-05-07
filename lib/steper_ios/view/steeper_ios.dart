import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:ui_ios/steperUi/seteper_provider.dart';
import 'package:ui_ios/steper_ios/provider/stepper_provider.dart';

class Stepper_ios extends StatefulWidget {
  const Stepper_ios({Key? key}) : super(key: key);

  @override
  State<Stepper_ios> createState() => _Stepper_iosState();
}

class _Stepper_iosState extends State<Stepper_ios> {
  sprovider? provideF;
  sprovider? provideT;

  @override
  Widget build(BuildContext context) {
    provideF = Provider.of<sprovider>(context, listen: false);
    provideT = Provider.of<sprovider>(context, listen: true);
    return CupertinoPageScaffold(
        child: CupertinoStepper(
            onStepContinue: () => provideT!.conti(),
            onStepCancel: () => provideT!.can(),
            currentStep: provideT!.i,
            steps: [
          Step(
            title: Text("SignUp"),
            content: Column(
              children: [
                CupertinoTextField(
                  prefix: Text(
                    "Full Name",
                    style: TextStyle(color: CupertinoColors.white),
                  ),
                ),
                SizedBox(

                  height: 10,
                ),
                CupertinoTextField(
                  prefix: Text(
                    "Email id",
                    style: TextStyle(color: CupertinoColors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CupertinoTextField(
                  prefix: Text(
                    "Password",
                    style: TextStyle(color: CupertinoColors.white),
                  ),
                ),
              ],
            ),
          ),
          Step(
            title: Text("Login"),
            content: Column(
              children: [
                CupertinoTextField(
                  prefix: Text(
                    "Full Name",
                    style: TextStyle(color: CupertinoColors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CupertinoTextField(
                  prefix: Text(
                    "Email id",
                    style: TextStyle(color: CupertinoColors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Step(
            title: Text("Home"),
            content: Column(
              children: [
                CupertinoTextField(
                  prefix: Text(
                    "Full Name",
                    style: TextStyle(color: CupertinoColors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CupertinoTextField(
                  prefix: Text(
                    "Email id",
                    style: TextStyle(color: CupertinoColors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ]));
  }
}
