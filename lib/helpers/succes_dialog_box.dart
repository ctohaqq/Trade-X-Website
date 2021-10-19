import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/constants/colors.dart';

class SuccessDialogBox extends StatefulWidget {
  const SuccessDialogBox({Key? key}) : super(key: key);

  @override
  _SuccessDialogBoxState createState() => _SuccessDialogBoxState();
}

class _SuccessDialogBoxState extends State<SuccessDialogBox> {
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
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'You Have Succesfully Joined Trade-X Waitlist!',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'close',
                style: TextStyle(
                  color: redColor,
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

class SuccessDialogBoxInvestor extends StatefulWidget {
  const SuccessDialogBoxInvestor({Key? key}) : super(key: key);

  @override
  _SuccessDialogBoxInvestorState createState() =>
      _SuccessDialogBoxInvestorState();
}

class _SuccessDialogBoxInvestorState extends State<SuccessDialogBoxInvestor> {
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
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'You Have Succesfully Joined Trade-X Investor Waitlist!',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'close',
                style: TextStyle(
                  color: redColor,
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

class SuccessDialogBoxInfluencer extends StatefulWidget {
  const SuccessDialogBoxInfluencer({Key? key}) : super(key: key);

  @override
  _SuccessDialogBoxInfluencerState createState() =>
      _SuccessDialogBoxInfluencerState();
}

class _SuccessDialogBoxInfluencerState
    extends State<SuccessDialogBoxInfluencer> {
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
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'You Have Succesfully Joined Trade-X Influencer Waitlist!',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'close',
                style: TextStyle(
                  color: redColor,
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

class SuccesDialogBoxUser extends StatefulWidget {
  const SuccesDialogBoxUser({Key? key}) : super(key: key);

  @override
  _SuccesDialogBoxUserState createState() => _SuccesDialogBoxUserState();
}

class _SuccesDialogBoxUserState extends State<SuccesDialogBoxUser> {
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
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'You Have Succesfully Joined Trade-X User Waitlist!',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'close',
                style: TextStyle(
                  color: redColor,
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

class SuccessDialogBoxFreelancers extends StatefulWidget {
  const SuccessDialogBoxFreelancers({Key? key}) : super(key: key);

  @override
  _SuccessDialogBoxFreelancersState createState() =>
      _SuccessDialogBoxFreelancersState();
}

class _SuccessDialogBoxFreelancersState
    extends State<SuccessDialogBoxFreelancers> {
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
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'You Have Succesfully Joined Trade-X Freelancer Waitlist!',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'close',
                style: TextStyle(
                  color: redColor,
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

class SuccessDialogBoxBrand extends StatefulWidget {
  const SuccessDialogBoxBrand({Key? key}) : super(key: key);

  @override
  _SuccessDialogBoxBrandState createState() => _SuccessDialogBoxBrandState();
}

class _SuccessDialogBoxBrandState extends State<SuccessDialogBoxBrand> {
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
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'You Have Succesfully Joined Trade-X Brands Waitlist!',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'close',
                style: TextStyle(
                  color: redColor,
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

class SuccessDialogBoxBoi extends StatefulWidget {
  const SuccessDialogBoxBoi({Key? key}) : super(key: key);

  @override
  _SuccessDialogBoxBoiState createState() => _SuccessDialogBoxBoiState();
}

class _SuccessDialogBoxBoiState extends State<SuccessDialogBoxBoi> {
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
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'You Have Succesfully Joined Trade-X BOIs Waitlist!',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'close',
                style: TextStyle(
                  color: redColor,
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
