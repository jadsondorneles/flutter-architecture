// File containing Widget
import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget(
      {Key? key, required this.title, required this.header, required this.rows})
      : super(key: key);

  final String title;
  final List<String> header;
  final List<Map<String, dynamic>> rows;

  @override
  Widget build(BuildContext context) {
    return TableStatelessWidget(title, header, rows);
  }
}

class TableStatelessWidget extends StatelessWidget {
  const TableStatelessWidget(this.title, this.header, this.rows);

  final String title;
  final List<String> header;
  final List<Map<String, dynamic>> rows;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        DataTable(
          columns: header.map((header) {
            return DataColumn(
              label: Text(
                header,
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            );
          }).toList(),
          rows: rows.map((row) {
            return DataRow(
              cells: header.map((header) {
                return DataCell(
                  Text(row[header].toString()),
                );
              }).toList(),
            );
          }).toList(),
        ),
      ],
    );
  }
}
