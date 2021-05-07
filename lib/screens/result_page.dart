import 'package:bmi_app/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/button_bottom.dart';
import '../style/colors.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      drawer: Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              // margin: EdgeInsets.symmetric(vertical: Sizes.dimens_20, horizontal: Sizes.dimens_30),
              padding: EdgeInsets.symmetric(
                  vertical: Sizes.dimens_15, horizontal: Sizes.dimens_10),
              child: Text(
                "Your Result",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.only(
                bottom: Sizes.dimens_6,
                left: Sizes.dimens_10,
                right: Sizes.dimens_10,
              ),
              padding: EdgeInsets.symmetric(horizontal: Sizes.dimens_70),
              decoration: BoxDecoration(
                color: AppColors.cardColor,
                // color: Colors.grey,
                borderRadius: BorderRadius.circular(Sizes.dimens_10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "NORMAL",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: AppColors.greenColor),
                  ),
                  Text(
                    "22.1",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    "Normal BMI range:",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: AppColors.bluegreyColor),
                  ),
                  Text("18,5 - 25 kg/m2",
                      style: Theme.of(context).textTheme.headline2),
                  SizedBox(
                    height: Sizes.dimens_15,
                  ),
                  Text("You have a normal body weight. Good job!",
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: Theme.of(context).textTheme.headline2),
                  GestureDetector(
                    onTap: () {
                      //save bmi
                    },
                    child: Container(
                      child: Center(
                          child: Text('SAVE RESULT',
                              style: Theme.of(context).textTheme.headline2)),
                      color: AppColors.buttonColor,
                      //margin: EdgeInsets.(top: 10),
                      padding: EdgeInsets.all(10),
                      //     width: 190,
                      width: double.infinity,
                      height: 55,
                    ),
                  ),
                  // Expanded(
                  //   child: Material(
                  //     color: AppColors.buttonColor,
                  //     child: MaterialButton(
                  //       onPressed: () {},
                  //       child: Text('Save Result'.toUpperCase(),
                  //           style: Theme.of(context).textTheme.headline2),
                  //       minWidth: double.infinity,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: "RE-CALCULATE YOUR BMI",
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
