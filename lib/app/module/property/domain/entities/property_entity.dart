import 'package:equatable/equatable.dart';
import 'package:pr_example_architecture/app/module/property/domain/entities/demography_entity.dart';
import 'package:pr_example_architecture/app/module/property/domain/entities/lease_entity.dart';

class PropertyEntity extends Equatable {
  final int? size;
  final int? lastSale;
  final String? leased;
  final List<LeaseEntity> leases;
  final List<DemographyEntity> demographies;

  const PropertyEntity({
    required this.size,
    required this.lastSale,
    required this.leased,
    required this.leases,
    required this.demographies,
  });

  @override
  List<Object?> get props => [size, lastSale, leased, leases, demographies];
}
