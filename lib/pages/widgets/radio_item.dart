import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class RadioItem extends StatelessWidget {
  final value;
  final groupValue;
  final label;
  final text;
  final ValueChanged onChanged;

  RadioItem({
    this.value,
    this.groupValue,
    this.label,
    this.text,
    required this.onChanged,
  });

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Container(
      width: 20,
      height: 20,
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(
            color: Colors.black,
          ),
        ),
        color: isSelected ? blueColor : whiteColor,
      ),
      child: Center(
        child: Text(
          value.toString(),
          style: TextStyle(
            color: isSelected ? whiteColor : blueColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return Container(
      child: Flexible(
        child: Text(
          text,
          style: mediumBlackTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: () => onChanged(value),
        // splashColor: Colors.cyan.withOpacity(0.5),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              _buildLabel(),
              SizedBox(
                width: 10,
              ),
              _buildText(),
            ],
          ),
        ),
      ),
    );
  }
}
