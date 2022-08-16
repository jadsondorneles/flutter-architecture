import 'package:equatable/equatable.dart';

class LeaseEntity extends Equatable {
  final String? name;
  final int? leasedMonths;
  final int? year;

  const LeaseEntity(
      {required this.name, required this.leasedMonths, required this.year});

  @override
  List<Object?> get props => [name, leasedMonths, year];
}
