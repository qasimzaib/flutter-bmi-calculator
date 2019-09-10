import 'package:flutter/material.dart';
import 'constants.dart';

const widthConstraint = 56.0;
const heightConstraint = 56.0;
const elevation = 6.0;

class RoundIconButton extends StatelessWidget {
	RoundIconButton({@required this.icon, @required this.onPressed});

	final IconData icon;
	final Function onPressed;

	@override
	Widget build(BuildContext context) {
		return RawMaterialButton(
			child: Icon(icon),
			onPressed: onPressed,
			elevation: elevation,
			constraints: BoxConstraints.tightFor(
				width: widthConstraint,
				height: heightConstraint,
			),
			shape: CircleBorder(),
			fillColor: k_floatingActionButtonBackgroundColor,
		);
	}
}
