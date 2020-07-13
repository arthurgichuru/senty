import 'package:flutter/material.dart';


class DropDownWidgetCountryCodes extends StatefulWidget {
  @override
  _DropDownWidgetCountryCodesState createState() => _DropDownWidgetCountryCodesState();
}

class _DropDownWidgetCountryCodesState extends State<DropDownWidgetCountryCodes> {

  List _countries = [
    "+254 - Kenya",
    "+255 - Tanzania ",
    "+256 - Uganda",
    "+250 - Rwanda"
  ];


  List<DropdownMenuItem<String>>_dropDownMenuItems;

  String _currentCountry;


  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCountry = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String documents in _countries) {
      items.add(
          new DropdownMenuItem(
              value: documents, child: new Text(documents)));
    }
    return items;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        //margin: EdgeInsets.all(10),
        width: 100.0,
        height: 60.0,
        decoration: BoxDecoration(
            border: Border(bottom:BorderSide(color: Colors.grey))
        ),
        child: Padding(padding: const EdgeInsets.all(8),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              value: _currentCountry,
              items: _dropDownMenuItems,
              onChanged: changedDropDownItem,
            ),
          )
        ),
      ),
    );
  }

  void changedDropDownItem(String selectedDocument) {
    setState(() {
      _currentCountry = selectedDocument;
    });
  }
}
