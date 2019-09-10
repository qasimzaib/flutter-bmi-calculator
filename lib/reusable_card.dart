import 'package:flutter/material.dart';

const containerMargin = 15.0;
const boxBorderRadius = 5.0;

class ReusableCard extends StatelessWidget {
	final Color color;
	final Widget cardChild;

	ReusableCard({@required this.color, this.cardChild});

	@override
	Widget build(BuildContext context) {
		return Container(
			child: cardChild,
			margin: EdgeInsets.all(containerMargin),
			decoration: BoxDecoration(
				color: color,
				borderRadius: BorderRadius.circular(boxBorderRadius),
			),
		);
	}
}
