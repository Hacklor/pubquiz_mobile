import 'package:flutter/material.dart';

class Choices extends StatefulWidget {
  final List<String> _choices;

  Choices(this._choices);

  @override
  State<StatefulWidget> createState() => _ChoicesState(_choices);
}

class _ChoicesState extends State<Choices>{
  String _selectedChoice = "";

  List<String> _choices;

  _ChoicesState(this._choices);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: _choicesWidgets(),
        ),
        Text(_selectedChoice),
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

  void _setSelectedChoice(String value) {
    setState(() => {_selectedChoice = value});
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
