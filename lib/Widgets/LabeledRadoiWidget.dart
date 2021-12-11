import 'package:flutter/material.dart';

class LabeledRadio extends StatelessWidget {
  final String label;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final Function onChanged;

  const LabeledRadio(
      {Key? key,
      required this.label,
      required this.padding,
      required this.groupValue,
      required this.value,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value != groupValue) {
          onChanged(value);
        }
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Radio<bool>(
              groupValue: groupValue,
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue);
              },
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}
