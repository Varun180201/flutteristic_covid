import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'dart:convert';

class CountryWisePatients extends StatefulWidget {
  @override
  _CountryWisePatientsState createState() => _CountryWisePatientsState();
}

class _CountryWisePatientsState extends State<CountryWisePatients> {
  List countryData;
  Future getCountryData() async {
    http.Response response = await http.get('https://corona.lmao.ninja/v2/countries');
    setState(() {
      countryData = json.decode(response.body);
    });
  }
  @override
  void initState() {
    super.initState();
    getCountryData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        centerTitle: true,
        title: Text(
            'All Countries Stats',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: countryData == null ? Center(
          child: CircularProgressIndicator(),
        ) : RefreshIndicator(
          onRefresh: getCountryData,
          color: Colors.red,
          child: ListView.builder(
              itemCount: countryData == null ? 0 : countryData.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Text(
                          countryData[index]['country'].toString(),
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Asap',
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Image.network(
                            countryData[index]['countryInfo']['flag'],
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                  'Confirmed:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Asap',
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  'Active:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Asap',
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  'Recovered:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Asap',
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  'Deceased:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Asap',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                countryData[index]['cases'].toString(),
                                style: TextStyle(
                                  color: Color(0xFFFA4444),
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                countryData[index]['active'].toString(),
                                style: TextStyle(
                                  color: Color(0xFFFA4444),
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                countryData[index]['recovered'].toString(),
                                style: TextStyle(
                                  color: Color(0xFFFA4444),
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                countryData[index]['deaths'].toString(),
                                style: TextStyle(
                                  color: Color(0xFFFA4444),
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}
