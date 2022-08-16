import 'package:mobx/mobx.dart';
import 'package:pr_example_architecture/app/module/property/domain/entities/demography_entity.dart';
import 'package:pr_example_architecture/app/module/property/domain/entities/property_entity.dart';

import '../../domain/entities/lease_entity.dart';

part 'property_store.g.dart';

class PropertyStore = _PropertyStoreBase with _$PropertyStore;

abstract class _PropertyStoreBase extends PropertyEntity with Store {
  @observable
  List<PropertyEntity> properties = [
    const PropertyEntity(size: 550, lastSale: 2021, leased: "Peter", leases: [
      LeaseEntity(name: "Bryan", leasedMonths: 3, year: 2018),
      LeaseEntity(name: "Penelope", leasedMonths: 8, year: 2019),
      LeaseEntity(name: "Briana", leasedMonths: 12, year: 2020),
    ], demographies: [
      DemographyEntity(
          territory: "EUA",
          state: "California",
          variable: 90,
          age: "5-14",
          year: 2000),
      DemographyEntity(
          territory: "EUA",
          state: "California",
          variable: 110,
          age: "15-24",
          year: 2000),
      DemographyEntity(
          territory: "EUA",
          state: "California",
          variable: 150,
          age: "25-34",
          year: 2000),
      DemographyEntity(
          territory: "EUA",
          state: "California",
          variable: 590,
          age: "5-14",
          year: 2005),
      DemographyEntity(
          territory: "EUA",
          state: "California",
          variable: 10,
          age: "15-24",
          year: 2005),
      DemographyEntity(
          territory: "EUA",
          state: "California",
          variable: 440,
          age: "25-34",
          year: 2005),
      DemographyEntity(
          territory: "EUA",
          state: "California",
          variable: 990,
          age: "5-14",
          year: 2010),
      DemographyEntity(
          territory: "EUA",
          state: "California",
          variable: 75,
          age: "15-24",
          year: 2010),
      DemographyEntity(
          territory: "EUA",
          state: "California",
          variable: 844,
          age: "25-34",
          year: 2010),
    ]),
  ];

  _PropertyStoreBase(
      {required super.size,
      required super.lastSale,
      required super.leased,
      required super.leases,
      required super.demographies});
}
