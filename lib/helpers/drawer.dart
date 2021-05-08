import 'package:flutter/material.dart';
import 'package:flutteristic_covid/screens/country_wise_patients.dart';
import 'package:flutteristic_covid/screens/search_city_data.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: ListView(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/no-virus.png"),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchCityData()));
            },
            leading: Icon(
              Icons.location_city,
            ),
            title: Text(
              'City based patients number',
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CountryWisePatients()));
            },
            leading: Icon(
              Icons.flag,
            ),
            title: Text(
              'Country wise data',
            ),
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
