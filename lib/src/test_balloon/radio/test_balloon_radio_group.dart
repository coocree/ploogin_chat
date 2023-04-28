import 'package:flutter/material.dart';
import 'package:ploogin_chat/src/test_balloon/radio/test_balloon_radio_option.dart';

class TestBalloonRadioGroup extends StatefulWidget {
  final ValueChanged<RadioOptions> onChanged;

  const TestBalloonRadioGroup({Key? key, required this.onChanged}) : super(key: key);

  @override
  _TestBalloonRadioGroupState createState() => _TestBalloonRadioGroupState();
}

class _TestBalloonRadioGroupState extends State<TestBalloonRadioGroup> {
  RadioOptions _radioValue = RadioOptions.option1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: _radioValue == RadioOptions.option1 ? Colors.blue : Colors.grey,
            ),
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                _radioValue = RadioOptions.option1;
              });
              widget.onChanged(RadioOptions.option1);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  Container(
                    width: 16.0,
                    height: 16.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _radioValue == RadioOptions.option1 ? Colors.blue : Colors.transparent,
                      border: Border.all(
                        color: _radioValue == RadioOptions.option1 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    'Option 1',
                    style: TextStyle(
                      color: _radioValue == RadioOptions.option1 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: _radioValue == RadioOptions.option2 ? Colors.blue : Colors.grey,
            ),
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                _radioValue = RadioOptions.option2;
              });
              widget.onChanged(RadioOptions.option2);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  Container(
                    width: 16.0,
                    height: 16.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _radioValue == RadioOptions.option2 ? Colors.blue : Colors.transparent,
                      border: Border.all(
                        color: _radioValue == RadioOptions.option2 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    'Option 2',
                    style: TextStyle(
                      color: _radioValue == RadioOptions.option2 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: _radioValue == RadioOptions.option3 ? Colors.blue : Colors.grey,
            ),
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                _radioValue = RadioOptions.option3;
              });
              widget.onChanged(RadioOptions.option3);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  Container(
                    width: 16.0,
                    height: 16.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _radioValue == RadioOptions.option3 ? Colors.blue : Colors.transparent,
                      border: Border.all(
                        color: _radioValue == RadioOptions.option3 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    'Option 3',
                    style: TextStyle(
                      color: _radioValue == RadioOptions.option3 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
