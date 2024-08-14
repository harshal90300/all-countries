import 'package:all_countries/view/detailed_view.dart';
import 'package:flutter/material.dart';
import 'package:all_countries/modal/all_countries_modal.dart';

class SearchByCountry extends StatefulWidget {
  List<AllCountriesModal>? allCountries;
  SearchByCountry({this.allCountries, Key? key}) : super(key: key);

  @override
  _SearchByCountryState createState() => _SearchByCountryState();
}

class _SearchByCountryState extends State<SearchByCountry> {
  String _searchQuery = '';
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List<AllCountriesModal> filteredCountries =
        widget.allCountries!.where((country) {
      String name = country.name!.common!.toLowerCase();
      return name.contains(_searchQuery.toLowerCase());
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: controller,
          onChanged: (value) {
            setState(() {
              _searchQuery = value;
            });
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            suffixIcon: _searchQuery.isNotEmpty
                ? IconButton(
                    icon: Icon(Icons.cancel),
                    onPressed: () {
                      setState(() {
                        _searchQuery = '';
                        controller.clear();
                      });
                    },
                  )
                : null,
            hintText: "Search By Country",
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: filteredCountries.length,
            itemBuilder: (context, i) {
              AllCountriesModal country = filteredCountries[i];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailedView(
                                modal: country,
                              )));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          country.flags!.png!,
                          width: 60,
                          height: 40,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width / 1.5,
                              child: Text(
                                country.name!.common ?? "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text("Capital: ${country.capital?[0]}",
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 144, 140, 140))),
                            Text("Population: ${country.population}",
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 144, 140, 140)))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
