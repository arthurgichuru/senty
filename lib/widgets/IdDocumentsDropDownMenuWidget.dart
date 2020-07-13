import 'package:flutter/material.dart';


class DropDownWidget extends StatefulWidget {
  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {

  List _documents = [
    "National ID",
    "Passport",
    "Alien ID",
    "Driving License"
  ];


  List<DropdownMenuItem<String>>_dropDownMenuItems;

  String _currentDocument;


  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentDocument = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String documents in _documents) {
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
            border: Border(bottom:BorderSide(color: Colors.grey)
    )),
        child: Padding(padding: const EdgeInsets.all(2),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              value: _currentDocument,
              items: _dropDownMenuItems,
              onChanged: changedDropDownItem,
            ),
          ),
        ),
      ),
    );
  }

   void changedDropDownItem(String selectedDocument) {
    setState(() {
      _currentDocument = selectedDocument;
    });
  }
}
