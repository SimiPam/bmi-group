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
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                  vertical: Sizes.dimens_15, horizontal: Sizes.dimens_20),
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
                bottom: Sizes.dimens_20,
                left: Sizes.dimens_20,
                right: Sizes.dimens_20,
              ),
              padding: EdgeInsets.symmetric(horizontal: Sizes.dimens_70),
              decoration: BoxDecoration(
                color: AppColors.genderCardColor,
                borderRadius: BorderRadius.circular(Sizes.dimens_10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "NORMAL",
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: AppColors.greenColor),
                      children: <TextSpan>[
                        TextSpan(
                          text: "\n22.1",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Normal BMI range:",
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: AppColors.bluegreyColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: "\n18,5 - 25 kg/m2",
                            style: Theme.of(context).textTheme.headline2),
                      ],
                    ),
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
                        child: Text(
                          'SAVE RESULT',
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(fontSize: Sizes.dimens_16),
                        ),
                      ),
                      color: AppColors.buttonColor,
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 55,
                    ),
                  ),
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
