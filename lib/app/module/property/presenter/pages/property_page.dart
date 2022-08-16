import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pr_example_architecture/app/module/property/presenter/widget/table_widget.dart';

import '../stores/property_store.dart';

class PropertyPage extends StatelessWidget {
  PropertyPage({Key? key}) : super(key: key);

  final PropertyStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: Container(
            constraints: const BoxConstraints(maxWidth: 1024),
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              const Text("Property Header",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
              Column(
                children: store.properties.map((property) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                            "Size is ${property.size} - Last sale at ${property.lastSale} - Leased by ${property.leased}"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TableWidget(
                            title: "Leases Information",
                            header: const ["Name", "Leased Months", "Year"],
                            rows: property.leases.map((lease) {
                              return {
                                "Name": lease.name,
                                "Leased Months": lease.leasedMonths,
                                "Year": lease.year,
                              };
                            }).toList()),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TableWidget(
                            title: "Demographic Information",
                            header: const [
                              "Territory",
                              "State",
                              "Variable",
                              "Age",
                              "Year"
                            ],
                            rows: property.demographies.map((lease) {
                              return {
                                "Territory": lease.territory.toString(),
                                "State": lease.state.toString(),
                                "Variable": lease.variable,
                                "Age": lease.age.toString(),
                                "Year": lease.year,
                              };
                            }).toList()),
                      ),
                    ],
                  );
                }).toList(),
              )
            ])),
      )),
    );
  }
}
