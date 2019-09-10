import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_widget.dart';
import 'reusable_card.dart';

const activeCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
	@override
	_InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
									child: ReusableCard(
										color: activeCardColor,
										cardChild: IconWidget(
											icon: FontAwesomeIcons.mars,
											iconText: 'MALE',
										),
									),
								),
								Expanded(
									child: ReusableCard(
										color: activeCardColor,
										cardChild: IconWidget(
											icon: FontAwesomeIcons.venus,
											iconText: 'FEMALE',
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
