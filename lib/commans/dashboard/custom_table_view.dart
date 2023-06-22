import 'package:flutter/material.dart';

class CustomTableView extends StatelessWidget {
  const CustomTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Center(
                      child: Text(
                    'Pcode',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade900),
                  )),
                ),
                TableCell(
                  child: Center(
                      child: Text(
                    'Program Title',
                    style: TextStyle(
                        color: Colors.orange.shade900,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                TableCell(
                  child: Center(
                      child: Text(
                    'Current Program',
                    style: TextStyle(
                        color: Colors.orange.shade900,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                TableCell(
                  child: Center(
                      child: Text(
                    'Status',
                    style: TextStyle(
                        color: Colors.orange.shade900,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
            const TableRow(
              children: [
                TableCell(
                  child: Center(child: Text('BS')),
                ),
                TableCell(
                  child: Text('Bachelor of science (computer science)'),
                ),
                TableCell(
                  child: Center(child: Text('C')),
                ),
                TableCell(
                  child: Center(child: Text('ACTIVE')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
