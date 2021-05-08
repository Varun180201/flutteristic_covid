import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'city_data.dart';

class SearchCityData extends StatefulWidget {
  @override
  _SearchCityDataState createState() => _SearchCityDataState();
}

class _SearchCityDataState extends State<SearchCityData> {
//  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//    testDevices: <String>[],
//    nonPersonalizedAds: true,
//    keywords: <String>['Flutter','Java'],
//  );
//   BannerAd _bannerAd;
//   BannerAd createBannerAd() {
//     return BannerAd(
//       adUnitId: 'ca-app-pub-5876464688073365/4119549819',
//       size: AdSize.banner,
//       targetingInfo: targetingInfo,
//       listener: (MobileAdEvent event) {
//         print("BannerAd : $event");
//       },
//     );
//   }
//  @override
//  void initState() {
//    FirebaseAdMob.instance.initialize(
////       appId: FirebaseAdMob.testAppId,
//      appId: 'ca-app-pub-5876464688073365~8227435346',
//    );
//    _bannerAd = createBannerAd()..load()..show();
//    super.initState();
//  }
//  @override
//  void dispose() {
//    _bannerAd.dispose();
//    super.dispose();
//  }
  List<DropdownMenuItem<String>> list = [];
  String selected, nameCITY;
  void loadData() {
    list=[];
    list.add(new DropdownMenuItem(
      child: Text('Andaman and Nicobar Islands'),
      value: 'Andaman and Nicobar Islands',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Andhra Pradesh'),
      value: 'Andhra Pradesh',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Arunachal Pradesh'),
      value: 'Arunachal Pradesh',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Assam'),
      value: 'Assam',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Andhra Pradesh'),
      value: 'Andhra Pradesh',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Bihar'),
      value: 'Bihar',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Chandigarh'),
      value: 'Chandigarh',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Chhattisgarh'),
      value: 'Chhattisgarh',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Delhi'),
      value: 'Delhi',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Goa'),
      value: 'Goa',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Gujarat'),
      value: 'Gujarat',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Haryana'),
      value: 'Haryana',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Himachal Pradesh'),
      value: 'Himachal Pradesh',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Jammu and Kashmir'),
      value: 'Jammu and Kashmir',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Jharkhand'),
      value: 'Jharkhand',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Karnataka'),
      value: 'Karnataka',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Kerala'),
      value: 'Kerala',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Ladakh'),
      value: 'Ladakh',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Madhya Pradesh'),
      value: 'Madhya Pradesh',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Maharashtra'),
      value: 'Maharashtra',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Manipur'),
      value: 'Manipur',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Meghalaya'),
      value: 'Meghalaya',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Mizoram'),
      value: 'Mizoram',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Odisha'),
      value: 'Odisha',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Puducherry'),
      value: 'Puducherry',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Punjab'),
      value: 'Punjab',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Rajasthan'),
      value: 'Rajasthan',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Tamil Nadu'),
      value: 'Tamil Nadu',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Telangana'),
      value: 'Telangana',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Tripura'),
      value: 'Tripura',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Uttar Pradesh'),
      value: 'Uttar Pradesh',
    ));
    list.add(new DropdownMenuItem(
      child: Text('Uttarakhand'),
      value: 'Uttarakhand',
    ));
    list.add(new DropdownMenuItem(
      child: Text('West Bengal'),
      value: 'West Bengal',
    ));
  }
  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        centerTitle: true,
        title: Text(
          'Search City',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: DropdownButton(
                  value: selected,
                  hint: Text(
                    'Select State',
                  ),
                  onChanged: (value) {
                    setState(() {
                      selected = value;
                    });
                  },
                  items: list,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(50),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    textCapitalization: TextCapitalization.words,
                    onChanged: (value) {
                      nameCITY = value;
                    },
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Enter City',
                      labelStyle: TextStyle(
                        color: Colors.red,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 100, right: 100,),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CityData(state: selected, city: nameCITY,);
                  }));
                },
                child: Center(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.search,
                      ),
                      Text(
                        'Search',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
