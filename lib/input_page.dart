import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
	@override
	_InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
	Color activeCardColor = Color(0xFF1D1E33);

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
									child: Card(
										color: activeCardColor,
										cardChild: IconWidget(
											icon: FontAwesomeIcons.mars,
											iconText: 'MALE',
										),
									),
								),
								Expanded(
									child: Card(
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

class IconWidget extends StatelessWidget {
	IconWidget({@required this.icon, @required this.iconText});

	final IconData icon;
	final String iconText;

	@override
	Widget build(BuildContext context) {
		return Column(
			mainAxisAlignment: MainAxisAlignment.center,
			children: <Widget>[
				Icon(
					icon,
					size: 80.0,
				),
				SizedBox(
					height: 15.0,
				),
				Text(
					iconText,
					style: TextStyle(
						fontSize: 18.0,
						color: Color(0xFF8D8E98),
					),
				),
			],
		);
	}
}

class Card extends StatelessWidget {
	final Color color;
	final Widget cardChild;

	Card({@required this.color, this.cardChild});

	@override
	Widget build(BuildContext context) {
		return Container(
			child: cardChild,
			margin: EdgeInsets.all(15.0),
			decoration: BoxDecoration(
				color: color,
				borderRadius: BorderRadius.circular(5.0),
			),
		);
	}
}
