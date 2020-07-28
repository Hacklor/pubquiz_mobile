import 'package:flutter/material.dart';

class Choices extends StatelessWidget {
  final String _selectedChoice;
  final List<String> _choices;
  final Function _setSelectedChoice;

  Choices(this._choices, this._selectedChoice, this._setSelectedChoice);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: _choicesWidgets(),
        ),
      ]
    );
  }

  List<Widget> _choicesWidgets() {
    List<Widget> choicesWidgets = [];

    for (final choice in _choices) {
      choicesWidgets.add(_choiceRadioListTile(choice));
    }

    return choicesWidgets;
  }

  Widget _choiceRadioListTile(String choice) {
    return ChoiceWidget(choice, _selectedChoice, _setSelectedChoice);
  }
}

class ChoiceWidget extends StatelessWidget {
  final String _choice;
  final String _groupValue;
  final Function _onChanged;

  ChoiceWidget(this._choice, this._groupValue, this._onChanged);

  @override
  Widget build(BuildContext context) {
    return RadioListTile<String>(
      title: Text(_choice),
      value: _choice,
      groupValue: _groupValue,
      onChanged: _onChanged,
    );
  }
}