import 'package:flutter/material.dart';


class BanksDropDownWidget extends StatefulWidget {
  @override
  _BanksDropDownWidgetState createState() => _BanksDropDownWidgetState();
}

class _BanksDropDownWidgetState extends State<BanksDropDownWidget> {

  List _banks = [
    "ABC Bank",
    "Bank of Africa",
    "Bank of Baroda",
    "Bank of India",
    "Barclays Bank of Kenya",
    "Citibank",
    "Consolidated Bank of Kenya",
    "Cooperative Bank of Kenya",
    "Credit Bank",
    "Development Bank of Kenya",
    "Diamond Trust Bank",
    "Dubai Islamic Bank",
    "Ecobank Kenya",
    "Equity Bank",
    "Family Bank",
    "First Community Bank",
    "Guaranty Trust Bank Kenya",
    "Guardian Bank",
    "Gulf African Bank",
    "Habib Bank AG Zurich",
    "Housing Finance Company of Kenya",
    "I&M Bank",
    "Jamii Bora Bank",
    "Kenya Commercial Bank",
    "Mayfair Bank",
    "Middle East Bank Kenya",
    "M Oriental Bank",
    "National Bank of Kenya",
    "NCBA Bank Kenya",
    "Paramount Universal Bank",
    "Prime Bank (Kenya)",
    "SBM Bank Kenya Limited",
    "Sidian Bank",
    "Spire Bank",
    "Stanbic Bank Kenya",
    "Standard Chartered Kenya",
    "Transnational Bank",
    "United Bank for Africa",
    "Victoria Commercial Bank",
  ];


  List<DropdownMenuItem<String>>_dropDownMenuItems;

  String _currentBank;


  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentBank = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String documents in _banks) {
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
        height: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            border: Border.all(color: Colors.grey)
        ),
        child: Padding(padding: const EdgeInsets.all(10),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              value: _currentBank,
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
      _currentBank = selectedDocument;
    });
  }
}
