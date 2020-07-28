import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import "../components/tab_builder.dart"; 

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          _customAppBar(),
          _addressChecker(context),
          _customSearchBox(), 
          CategoryBuilder(), 
        ],
      )),
    );
  }

  Widget _customAppBar() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                iconSize: 5,
                icon: SvgPicture.asset("assets/icons/NavButton.svg"),
                onPressed: () {}),
            IconButton(
                iconSize: 5,
                icon: SvgPicture.asset("assets/icons/bag.svg"),
                onPressed: () {}),
          ],
        ));
  }

  Widget _addressChecker(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Deliver to", style: Theme.of(context).textTheme.headline1),
            Row(
              children: <Widget>[
                Text("129 5th ave"),
                Icon(Icons.arrow_drop_down)
              ],
            )
          ]),
    );
  }

  Widget _customSearchBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFE9E0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 60,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              Text("Search for food", style: TextStyle(fontSize: 16.0))
            ],
          ),
        ),
      ),
    );
  }
}
