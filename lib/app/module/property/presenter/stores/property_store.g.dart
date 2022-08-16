// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PropertyStore on _PropertyStoreBase, Store {
  late final _$propertiesAtom =
      Atom(name: '_PropertyStoreBase.properties', context: context);

  @override
  List<PropertyEntity> get properties {
    _$propertiesAtom.reportRead();
    return super.properties;
  }

  @override
  set properties(List<PropertyEntity> value) {
    _$propertiesAtom.reportWrite(value, super.properties, () {
      super.properties = value;
    });
  }

  @override
  String toString() {
    return '''
properties: ${properties}
    ''';
  }
}
