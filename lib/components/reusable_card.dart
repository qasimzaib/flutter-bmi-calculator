import 'package:flutter/material.dart';

const containerMargin = 15.0;
const boxBorderRadius = 5.0;

class ReusableCard extends StatelessWidget {
	final Color color;
	final Widget cardChild;
	final Function onPress;

	ReusableCard({@required this.color, this.cardChild, this.onPress});

	@override
	Widget build(BuildContext context) {
		return GestureDetector(
			onTap: onPress,
			child: Container(
				child: cardChild,
				margin: EdgeInsets.all(containerMargin),
				decoration: BoxDecoration(
					color: color,
					borderRadius: BorderRadius.circular(boxBorderRadius),
				),
			),
		);
	}
}
