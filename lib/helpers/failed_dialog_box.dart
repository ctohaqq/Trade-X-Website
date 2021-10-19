import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/constants/colors.dart';

class FailedDialogBoxGeneral extends StatefulWidget {
  const FailedDialogBoxGeneral({Key? key}) : super(key: key);

  @override
  _FailedDialogBoxGeneralState createState() => _FailedDialogBoxGeneralState();
}

class _FailedDialogBoxGeneralState extends State<FailedDialogBoxGeneral> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Container(
        width: 600,
        height: 400,
        decoration: BoxDecoration(color: HexColor('#131212')),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Please Enter A Valid Email!!!',
                style: TextStyle(
                  color: redColor,
                  fontSize: 25,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'close',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FailedDialogBoxInfluencer extends StatefulWidget {
  const FailedDialogBoxInfluencer({Key? key}) : super(key: key);

  @override
  _FailedDialogBoxInfluencerState createState() =>
      _FailedDialogBoxInfluencerState();
}

class _FailedDialogBoxInfluencerState extends State<FailedDialogBoxInfluencer> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Container(
        width: 600,
        height: 400,
        decoration: BoxDecoration(color: HexColor('#131212')),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Please Enter Valid Details!!!',
                style: TextStyle(
                  color: redColor,
                  fontSize: 25,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'close',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
