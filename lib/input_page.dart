import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_widget.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'round_icon_button.dart';

enum Gender {
	male,
	female,
}

class InputPage extends StatefulWidget {
	@override
	_InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
	Gender selectedGender;
	int height = 180;
	int weight = 60;
	int age = 18;

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('BMI CALCULATOR'),
			),
			body: Column(
				crossAxisAlignment: CrossAxisAlignment.stretch,
				children: <Widget>[
					Expanded(
						child: Row(
							children: <Widget>[
								Expanded(
									child: ReusableCard(
										onPress: () {
											setState(() {
												selectedGender = Gender.male;
											});
										},
										color: selectedGender == Gender.male
											? k_activeCardColor
											: k_inActiveCardColor,
										cardChild: IconWidget(
											icon: FontAwesomeIcons.mars,
											iconText: 'MALE',
										),
									),
								),
								Expanded(
									child: ReusableCard(
										onPress: () {
											setState(() {
												selectedGender = Gender.female;
											});
										},
										color: selectedGender == Gender.female
											? k_activeCardColor
											: k_inActiveCardColor,
										cardChild: IconWidget(
											icon: FontAwesomeIcons.venus,
											iconText: 'FEMALE',
										),
									),
								),
							],
						),
					),
					Expanded(
						child: ReusableCard(
							color: k_inActiveCardColor,
							cardChild: Column(
								mainAxisAlignment: MainAxisAlignment.center,
								children: <Widget>[
									Text(
										'HEIGHT',
										style: k_labelTextStyle,
									),
									Row(
										mainAxisAlignment: MainAxisAlignment
											.center,
										crossAxisAlignment: CrossAxisAlignment
											.baseline,
										textBaseline: TextBaseline.alphabetic,
										children: <Widget>[
											Text(
												height.toString(),
												style: k_numberTextStyle,
											),
											Text(
												'cm',
												style: k_labelTextStyle,
											)
										],
									),
									SliderTheme(
										data: SliderTheme.of(context).copyWith(
											activeTrackColor: Colors.white,
											inactiveTrackColor: k_inActiveSliderColor,
											thumbColor: k_sliderThumbColor,
											overlayColor: k_sliderOverlayColor,
											thumbShape: RoundSliderThumbShape(
												enabledThumbRadius: k_enabledThumbRadius,
											),
											overlayShape: RoundSliderOverlayShape(
												overlayRadius: k_overlayRadius,
											),
										),
										child: Slider(
											value: height.toDouble(),
											min: minSliderValue,
											max: maxSliderValue,
											onChanged: (double newValue) {
												setState(() {
													height = newValue.round();
												});
											},
										),
									)
								],
							),
						)
					),
					Expanded(
						child: Row(
							children: <Widget>[
								Expanded(
									child: ReusableCard(
										color: k_inActiveCardColor,
										cardChild: Column(
											mainAxisAlignment: MainAxisAlignment.center,
											children: <Widget>[
												Text(
													'WEIGHT',
													style: k_labelTextStyle,
												),
												Text(
													weight.toString(),
													style: k_numberTextStyle,
												),
												Row(
													mainAxisAlignment: MainAxisAlignment
														.center,
													children: <Widget>[
														RoundIconButton(
															icon: FontAwesomeIcons
																.minus,
															onPressed: () {
																setState(() {
																	weight--;
																});
															},
														),
														SizedBox(
															width: k_sizedBoxWidth,
														),
														RoundIconButton(
															icon: FontAwesomeIcons
																.plus,
															onPressed: () {
																setState(() {
																	weight++;
																});
															},
														),
													],
												)
											],
										),
									),
								),
								Expanded(
									child: ReusableCard(
										color: k_inActiveCardColor,
										cardChild: Column(
											mainAxisAlignment: MainAxisAlignment.center,
											children: <Widget>[
												Text(
													'AGE',
													style: k_labelTextStyle,
												),
												Text(
													age.toString(),
													style: k_numberTextStyle,
												),
												Row(
													mainAxisAlignment: MainAxisAlignment.center,
													children: <Widget>[
														RoundIconButton(
															icon: FontAwesomeIcons.minus,
															onPressed: () {
																setState(() {
																	age--;
																});
															},
														),
														SizedBox(
															width: k_sizedBoxWidth,
														),
														RoundIconButton(
															icon: FontAwesomeIcons.plus,
															onPressed: () {
																setState(() {
																	age++;
																});
															},
														),
													],
												)
											],
										),
									),
								),
							],
						),
					),
					Container(
						color: k_bottomContainerColor,
						height: k_bottomContainerHeight,
						width: double.infinity,
						margin: EdgeInsets.only(top: 10.0),
					),
				],
			)
		);
	}
}
