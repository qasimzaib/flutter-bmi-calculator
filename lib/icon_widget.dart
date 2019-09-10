import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
	fontSize: 18.0,
	color: Color(0xFF8D8E98),
);
const sizedBoxHeight = 15.0;
const iconSize = 80.0;

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
					size: iconSize,
				),
				SizedBox(
					height: sizedBoxHeight,
				),
				Text(
					iconText,
					style: labelTextStyle,
				),
			],
		);
	}
}
