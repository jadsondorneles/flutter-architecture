// Entities implementations (for Usecases and UI)
import 'package:equatable/equatable.dart';

class DemographyEntity extends Equatable {
  final String? territory;
  final String? state;
  final int? variable;
  final String? age;
  final int? year;

  const DemographyEntity(
      {required this.territory,
      required this.state,
      required this.variable,
      required this.age,
      required this.year});

  @override
  List<Object?> get props => [territory, state, variable, age, year];
}
