import 'dart:async';

import 'package:bmi_app/screens/result_page.dart';
import 'package:bmi_app/widgets/round_button.dart';
import 'package:bmi_app/constants/sizes.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/button_bottom.dart';
import '../widgets/card__widget.dart';
import '../style/colors.dart';
import '../widgets/icon_content.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum Gender { male, female }

class _MyHomePageState extends State<MyHomePage> {
  
  Gender selectedGender = Gender.male;
  Color activeCardColor = Colors.black;
  Color inActiveCardColor = Colors.grey;

  late Timer _timer;
  var _weight = 0;
  var _age = 0;
  int height = 180;

  void minusTapp() {
    setState(() {
      if (_age > 0) _age--;
    });
  }

  void addTap() {
    setState(() {
      _age++;
    });
  }

  void minusTapDown(TapDownDetails details) {
    _timer = Timer.periodic(Duration(milliseconds: 100), (t) {
      setState(() {
        if (_age > 0) _weight--;
      });
      //print('value $_age');
    });
  }

  void addTapDown(TapDownDetails details) {
    _timer = Timer.periodic(Duration(milliseconds: 100), (t) {
      setState(() {
        _age++;
      });
      //print('value $_age');
    });
  }

  void tapUp() {
    _timer.cancel();
  }

  void weightMinusTapp() {
    setState(() {
      if (_weight > 0) _weight--;
    });
  }

  void weightAddTap() {
    setState(() {
      _weight++;
    });
  }

  void weightMinusTapDown(TapDownDetails details) {
    _timer = Timer.periodic(Duration(milliseconds: 100), (t) {
      setState(() {
        if (_weight > 0) _weight--;
      });
      //print('value $_weight');
    });
  }

  void weightAddTapDown(TapDownDetails details) {
    _timer = Timer.periodic(Duration(milliseconds: 100), (t) {
      setState(() {
        _weight++;
      });
      //print('value $_age');
    });
  }

  void weightTapUp() {
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar( 
        // leading: IconButton(
        //   icon: Icon(Icons.accessible),
        //   onPressed: () => Scaffold.of(context).openDrawer(),
        // ),
        leading: Icon(FontAwesomeIcons.bars),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // leading: IconButton(
        //   icon: Icon(Icons.accessible),
        //   onPressed: () => Scaffold.of(context).openDrawer(),
        // ),
        // leading: Icon(Icons.),
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      //drawer: Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  //male container
                  child: CardWidget(
                    cardChild: IconContent(
                      rotate: 0,
                      iconColor: selectedGender == Gender.male
                          ? AppColors.whiteColor
                          : AppColors.counterTextColor,
                      label: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  //female container
                  child: CardWidget(
                    cardChild: IconContent(
                      rotate: 7,
                      iconColor: selectedGender == Gender.female
                          ? AppColors.whiteColor
                          : AppColors.counterTextColor,
                      label: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CardWidget(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: Theme.of(context).textTheme.caption),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(),
                          style: Theme.of(context).textTheme.bodyText1),
                      Text('cm', style: Theme.of(context).textTheme.caption),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: AppColors.activeTrackColor,
                      activeTrackColor: AppColors.whiteColor,
                      thumbColor: AppColors.thumbColor,
                      overlayColor: AppColors.overlayColor,
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: Sizes.dimens_15),
                      overlayShape: RoundSliderOverlayShape(
                          overlayRadius: Sizes.dimens_30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: Sizes.dimens_120,
                      max: Sizes.dimens_220,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  //weight container
                  child: CardWidget(
                    onPress: () {},
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WEIGHT",
                            style: Theme.of(context).textTheme.caption),
                        Text("$_weight",
                            style: Theme.of(context).textTheme.bodyText1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              iconData: Icons.remove,
                              onTapped: weightMinusTapp,
                              onTappedDown: (details) {
                                weightMinusTapDown(details);
                              },
                              onTappedUp: (details) {
                                weightTapUp();
                              },
                            ),
                            SizedBox(width: 15.0),
                            RoundButton(
                              iconData: Icons.add,
                              onTapped: weightAddTap,
                              onTappedDown: (details) {
                                weightAddTapDown(details);
                              },
                              onTappedUp: (details) {
                                weightTapUp();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  //age container
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: Sizes.dimens_10, horizontal: Sizes.dimens_4),
                    decoration: BoxDecoration(
                      color: AppColors.cardColor,
                      borderRadius: BorderRadius.circular(Sizes.dimens_10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Age".toUpperCase(),
                            style: Theme.of(context).textTheme.caption),
                        Text("$_age",
                            style: Theme.of(context).textTheme.bodyText1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              iconData: Icons.remove,
                              onTapped: minusTapp,
                              onTappedDown: (details) {
                                minusTapDown(details);
                              },
                              onTappedUp: (details) {
                                tapUp();
                              },
                            ),
                            SizedBox(width: 15.0),
                            RoundButton(
                              iconData: Icons.add,
                              onTapped: addTap,
                              onTappedDown: (details) {
                                addTapDown(details);
                              },
                              onTappedUp: (details) {
                                tapUp();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //button container
          BottomButton(
            buttonText: "CALCULATE YOUR BMI",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
