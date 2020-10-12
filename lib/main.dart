import 'package:currency_exchange/constant.dart';
import 'package:currency_exchange/reusable_card.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double dollar = 1;
  int khmerriel = 4000;
  double fixed = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: ReusableCard(
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'លទ្ធផល',
                          style: kResultTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 32),
                              child: Text(
                                (dollar * khmerriel).round().toString(),
                                style:
                                    kNumberTextStyle.copyWith(fontSize: 45.0),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Text(
                              ' រៀល',
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        Expanded(
                          child: ReusableCard(
                            color: kActiveCardColor,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'លុយដុល្លា',
                                  style: kLabelTextStyle.copyWith(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: <Widget>[
                                    Text(
                                      dollar.toString(),
                                      style: kNumberTextStyle.copyWith(
                                          fontSize: 45),
                                    ),
                                    Text(
                                      'ដុល្លា',
                                      style: kLabelTextStyle,
                                    ),
                                  ],
                                ),
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    activeTrackColor: Colors.white,
                                    inactiveTrackColor: kSliderInactiveColor,
                                    thumbColor: Color(0xFFEB1555),
                                    overlayColor: Color(0x29EB1555),
                                    thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 10.0),
                                    overlayShape: RoundSliderOverlayShape(
                                        overlayRadius: 30.0),
                                  ),
                                  child: Slider(
                                    value: dollar,
                                    min: 0.00,
                                    max: 20.00,
                                    onChanged: (double value) {
                                      //  value = value.ceilToDouble();
                                      setState(() {
                                        dollar = double.tryParse(
                                            value.toStringAsFixed(1));
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  'អត្រាប្តូរប្រាក់',
                                  style: kLabelTextStyle.copyWith(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: <Widget>[
                                    Text(
                                      khmerriel.toString(),
                                      style: kNumberTextStyle.copyWith(
                                          fontSize: 45),
                                    ),
                                    Text(
                                      ' រៀល',
                                      style: kLabelTextStyle,
                                    ),
                                  ],
                                ),
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    activeTrackColor: Colors.white,
                                    inactiveTrackColor: kSliderInactiveColor,
                                    thumbColor: Color(0xFFEB1555),
                                    overlayColor: Color(0x29EB1555),
                                    thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 10.0),
                                    overlayShape: RoundSliderOverlayShape(
                                        overlayRadius: 30.0),
                                  ),
                                  child: Slider(
                                    value: khmerriel.toDouble(),
                                    min: 3900.00,
                                    max: 4200.00,
                                    onChanged: (double value) {
                                      setState(() {
                                        khmerriel = value.round();
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
