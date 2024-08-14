import 'dart:convert';
import 'dart:developer';

import 'package:all_countries/modal/all_countries_modal.dart';
import 'package:all_countries/view/detailed_view.dart';
import 'package:all_countries/view/search_by_country.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<AllCountriesModal>? allCountries;

  List<String?> uniqueRegions = [];

  List<Name>? nameOfCountry;
  Map<String, List<AllCountriesModal>> groupedCountries = {};

  void getCountries() async {
    try {
      var response =
          await http.get(Uri.parse("https://restcountries.com/v3.1/all"));

      if (response.statusCode == 200) {
        allCountries =
            AllCountriesModal.getCountries(jsonDecode(response.body));

        allCountries!.forEach((country) {
          if (!groupedCountries.containsKey(country.region)) {
            groupedCountries[country.region!] = [];
          }
          groupedCountries[country.region]!.add(country);
        });

        log("$groupedCountries");

        setState(() {});
      } else {
        EasyLoading.showError('Failed to load countries');
      }
    } catch (e) {
      EasyLoading.showError(e.toString());
    }
  }

  checkConnectivity() async {
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.none)) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('You\'re not connected to a network')));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content:
              Text('You\'re connected to a ${connectivityResult[0]} network')));
      getCountries();
      // TODO: implement initState
    }
  }

  @override
  void initState() {
    checkConnectivity();
    getCountries();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchByCountry(
                                allCountries: allCountries,
                              )));
                },
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            )
          ],
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            "Countries By Continent",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: allCountries == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: groupedCountries.length,
                    itemBuilder: (context, i) {
                      String region = groupedCountries.keys.elementAt(i);
                      List<AllCountriesModal> countriesInRegion =
                          groupedCountries[region]!;
                      return Card(
                        // elevation: 5,
                        child: ExpansionTile(
                          iconColor: Theme.of(context).primaryColor,
                          // trailing: Icon(Icons),
                          leading: Icon(
                            Icons.public,
                            color: Theme.of(context).primaryColor,
                          ),
                          title: Text(
                            region,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          children: countriesInRegion
                              .map((country) => GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailedView(
                                                    modal: country,
                                                  )));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Card(
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.network(
                                                country.flags!.png!,
                                                width: 60,
                                                height: 40,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width /
                                                        2,
                                                    child: Text(
                                                      country.name!.common ??
                                                          "",
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Text(
                                                      "Capital: ${country.capital?[0]}",
                                                      style: const TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              144,
                                                              140,
                                                              140))),
                                                  Text(
                                                      "Population: ${country.population}",
                                                      style: const TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              144,
                                                              140,
                                                              140)))
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      );
                    }),
              ));
  }
}
