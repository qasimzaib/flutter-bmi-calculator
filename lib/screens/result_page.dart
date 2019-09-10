import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ResultPage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('BMI CALCULATOR'),
			),
			body: Column(
				mainAxisAlignment: MainAxisAlignment.spaceEvenly,
				crossAxisAlignment: CrossAxisAlignment.stretch,
				children: <Widget>[
					Expanded(
						child: Container(
							child: Center(
								child: Text(
									'Your Result',
									style: k_titleTextStyle,
								),
							),
						),
					),
					Expanded(
						flex: 5,
						child: ReusableCard(
							color: k_activeCardColor,
							cardChild: Column(
								mainAxisAlignment: MainAxisAlignment
									.spaceEvenly,
								crossAxisAlignment: CrossAxisAlignment.center,
								children: <Widget>[
									Text(
										'Normal',
										style: k_resultTextStyle,
									),
									Text(
										'18.3',
										style: k_BMITextStyle,
									),
									Text(
										'Your BMI score is quite low. You should eat more',
										textAlign: TextAlign.center,
										style: k_bodyTextStyle,
									)
								],
							),
						),
					),
					BottomButton(
						buttonTitle: 'RE-CALCULATE',
						onTap: () {
							Navigator.pop(context);
						},
					)
				],
			),
		);
	}
}
