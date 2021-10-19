import 'package:flutter/material.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen_type.dart';

class InfluencerPage extends StatefulWidget {
  const InfluencerPage({Key? key}) : super(key: key);

  @override
  _InfluencerPageState createState() => _InfluencerPageState();
}

class _InfluencerPageState extends State<InfluencerPage> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: InfluencerScreenType(),
    );
  }
}
