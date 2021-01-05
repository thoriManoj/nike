import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoriesButton extends StatefulWidget {
  final String id;

  CategoriesButton({this.id});

  @override
  _CategoriesButtonState createState() => _CategoriesButtonState();
}

class _CategoriesButtonState extends State<CategoriesButton> {
  List<String> brand = ['Nike', 'Addidas', 'Reboke', 'Puma'];
  List<String> type = ['Trending', 'New', 'Popular'];
  List<String> gender = ['Men', 'Female', 'Children'];
  String dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            height: 40,
            width: MediaQuery.of(context).size.width / 3.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(color: Colors.black)),
            child: Center(
              child: OptionButton(
                cetegory: brand,
              ),
            )),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width / 3.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(color: Colors.black)),
          child: Center(
            child: OptionButton(
              cetegory: type,
            ),
          ),
        ),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width / 3.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(color: Colors.black)),
          child: Center(
              child: OptionButton(
            cetegory: gender,
          )),
        )
      ],
    );
  }
}

class OptionButton extends StatefulWidget {
  final List<String> cetegory;
  OptionButton({
    this.cetegory,
    Key key,
  }) : super(key: key);

  @override
  _OptionButtonState createState() => _OptionButtonState();
}

class _OptionButtonState extends State<OptionButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: widget.cetegory[0],
        icon: Icon(Icons.expand_more),
        iconSize: 22,
        //elevation: 16,
        style: TextStyle(color: Colors.black),
        // underline: Container(
        //   height: 2,
        //   color: Colors.deepPurpleAccent,
        // ),

        onChanged: (String newValue) {
          setState(() {
            widget.cetegory[0] = newValue;
          });
        },
        items: widget.cetegory.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

// List<String> buttonItems(String id) {
//   if (id == buttonCategory.BRAND) {
//     return
//   } else if (id == buttonCategory.TYPE) {
//     return <String>['Trending', 'New', 'Popular'];
//   } else {
//     return <String>['Men', 'Female', 'Children'];
//   }
// }

// enum buttonCategory {
//   BRAND,
//   TYPE,
//   GENDER,
// }
