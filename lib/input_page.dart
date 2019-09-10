import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_widget.dart';
import 'reusable_card.dart';

const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);

enum Gender {
	male,
	female,
}

class InputPage extends StatefulWidget {
	@override
	_InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
	Color maleCardColor = inActiveCardColor;
	Color femaleCardColor = inActiveCardColor;

	void updateGenderCardColor (Gender selectedGender) {
		setState(() {
			if (selectedGender == Gender.male) {
				if (maleCardColor == activeCardColor) {
					maleCardColor = inActiveCardColor;
				} else {
					maleCardColor = activeCardColor;
					femaleCardColor = inActiveCardColor;
				}
			} else if (selectedGender == Gender.female) {
				if (femaleCardColor == activeCardColor) {
					femaleCardColor = inActiveCardColor;
				} else {
					femaleCardColor = activeCardColor;
					maleCardColor = inActiveCardColor;
				}
			}
		});
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('BMI CALCULATOR'),
			),
			body: Column(
				children: <Widget>[
					Expanded(
						child: Row(
							children: <Widget>[
								Expanded(
									child: GestureDetector(
										onTap: () {
											updateGenderCardColor(Gender.male);
										},
										child: ReusableCard(
											color: maleCardColor,
											cardChild: IconWidget(
												icon: FontAwesomeIcons.mars,
												iconText: 'MALE',
											),
										),
									),
								),
								Expanded(
									child: GestureDetector(
										onTap: () {
											updateGenderCardColor(Gender.female);
										},
										child: ReusableCard(
											color: femaleCardColor,
											cardChild: IconWidget(
												icon: FontAwesomeIcons.venus,
												iconText: 'FEMALE',
											),
										),
									),
								),
							],
						),
					),
					Expanded(child: Card(color: Color(0xFF1D1E33))),
					Expanded(
						child: Row(
							children: <Widget>[
								Expanded(
									child: Card(color: Color(0xFF1D1E33),)),
								Expanded(child: Card(color: Color(0xFF1D1E33))),
							],
						),
					),
				],
			)
		);
	}
}
