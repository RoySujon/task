import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/screen/tabledtata.dart';

class RawTable extends StatelessWidget {
  const RawTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.green),
      defaultColumnWidth: FlexColumnWidth(30),
      children: <TableRow>[
        TableRow(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('data')),
          ),
          Text('data'),
          Text('data'),
          Text('n')
        ]),
        TableRow(children: [
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
        ]),
        TableRow(children: [
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
        ]),
      ],
    );
  }
}
