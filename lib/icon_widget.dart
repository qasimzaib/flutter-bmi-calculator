import 'package:flutter/material.dart';
import 'constants.dart';

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
					size: k_iconSize,
				),
				SizedBox(
					height: k_sizedBoxHeight,
				),
				Text(
					iconText,
					style: k_labelTextStyle,
				),
			],
		);
	}
}
