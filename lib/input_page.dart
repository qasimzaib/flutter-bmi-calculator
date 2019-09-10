import 'package:flutter/material.dart';

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
								Expanded(child: Card(color: Color(0xFF1D1E33))),
								Expanded(child: Card(color: Color(0xFF1D1E33))),
							],
						),
					),
					Expanded(child: Card(color: Color(0xFF1D1E33))),
					Expanded(
						child: Row(
							children: <Widget>[
								Expanded(child: Card(color: Color(0xFF1D1E33),)),
								Expanded(child: Card(color: Color(0xFF1D1E33))),
							],
						),
					),
				],
			)
		);
	}
}

class Card extends StatelessWidget {
	final Color color;
	final Widget childCard;

	Card({@required this.color, this.childCard});

	@override
	Widget build(BuildContext context) {
		return Container(
			child: childCard,
			margin: EdgeInsets.all(15.0),
			decoration: BoxDecoration(
				color: color,
				borderRadius: BorderRadius.circular(5.0),
			),
		);
	}
}
