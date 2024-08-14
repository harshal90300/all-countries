import 'package:all_countries/modal/all_countries_modal.dart';
import 'package:flutter/material.dart';

class DetailedView extends StatefulWidget {
  AllCountriesModal? modal;
  DetailedView({this.modal, Key? key}) : super(key: key);

  @override
  _DetailedViewState createState() => _DetailedViewState();
}

class _DetailedViewState extends State<DetailedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Country Details",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: double.infinity,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  // color: Colors.red,
                  child: Image.network(
                    widget.modal!.flags!.png!,
                    width: double.infinity,
                  )),
              Container(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.modal?.name?.common ?? "",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // // ),
                        Text("Capital : ${widget.modal?.capital?[0]}"),
                        const Divider(),
                        Text("Population : ${widget.modal?.population}"),
                        const Divider(),
                        Text("Region : ${widget.modal?.region}"),
                        const Divider(),
                        Text("Sub - Region : ${widget.modal?.subregion}"),
                        const Divider(),
                        Text("Area : ${widget.modal?.area}"),
                        const Divider(),
                        widget.modal!.borders == null
                            ? Text("Border: null")
                            : Text(
                                "Border : ${widget.modal!.borders!.map((e) => e)}"),
                        const Divider(),
                        Text("Timezones : ${widget.modal!.timezones![0]}"),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Coat Of Arms",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        widget.modal?.coatOfArms?.png == null
                            ? Image.asset("assets/images.png")
                            : Image.network(
                                widget.modal!.coatOfArms!.png!,
                                width: MediaQuery.sizeOf(context).width / 3,
                              )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
